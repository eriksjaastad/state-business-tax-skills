#!/usr/bin/env bash
# Local checks for state-business-tax-skills (#7828): the frontmatter,
# placeholder, disclaimer and freshness jobs of .github/workflows/validate.yml.
# Freshness only warns, as it did on GitHub; the weekly link check is not a push
# check.
#
# The shared pre-push (claude-user-config hooks/git-local-checks.py) runs this
# in a fresh worktree of the pushed commit, with LOCAL_CHECKS_SHA and
# LOCAL_CHECKS_BASE set, and bounds the whole run (LOCAL_CHECKS_TIMEOUT,
# default 30 minutes), so the files read here are the commit's. Run it by hand
# from a checkout to check that checkout's files; with no base it always runs.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

sha="$(git rev-parse HEAD)"
if [ -n "${LOCAL_CHECKS_SHA:-}" ] && [ "$sha" != "$(git rev-parse "$LOCAL_CHECKS_SHA^{commit}")" ]; then
    echo "local checks: this checkout is at $sha, not the pushed $LOCAL_CHECKS_SHA" >&2
    exit 2
fi

# True when any given path changed since LOCAL_CHECKS_BASE; always true without
# one. If the diff itself fails, say so and treat every path as changed, so a
# broken diff runs the gated checks instead of silently skipping them.
changed() {
    [ -z "${LOCAL_CHECKS_BASE:-}" ] && return 0
    local paths
    if ! paths="$(git diff --name-only "$LOCAL_CHECKS_BASE" "$sha" -- "$@")"; then
        echo "local checks: cannot diff $LOCAL_CHECKS_BASE..$sha; running the gated checks" >&2
        return 0
    fi
    [ -n "$paths" ]
}

if ! changed skills/ template/ .github/workflows/validate.yml; then
    echo "local checks: no skills/ or template/ changes; nothing to check"
    exit 0
fi

DISCLAIMER="This provides general tax guidance based on publicly available information"
cutoff="$(date -v-12m +%Y-%m-%d 2>/dev/null || date -d '12 months ago' +%Y-%m-%d)"
status=0
for skill in skills/*/SKILL.md; do
    name="$(basename "$(dirname "$skill")")"
    head10="$(head -10 "$skill")"
    for field in name description last_verified; do
        if ! grep -q "^$field:" <<<"$head10"; then
            echo "ERROR $skill: missing '$field' in frontmatter"
            status=1
        fi
    done
    verified="$(grep '^last_verified:' <<<"$head10" | sed 's/last_verified: *//' || true)"
    if ! grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' <<<"$verified"; then
        echo "ERROR $skill: last_verified '$verified' is not a valid YYYY-MM-DD date"
        status=1
    elif [[ "$verified" < "$cutoff" ]]; then
        echo "WARNING $skill: $name last verified $verified, older than 12 months; reverify its rates"
    fi
    if grep -nE '\[State Name\]|\[Tax Abbreviation\]|xx-tax-name|example\.gov' "$skill"; then
        echo "ERROR $skill: template placeholder text in a shipped skill"
        status=1
    fi
    if ! grep -q "$DISCLAIMER" "$skill"; then
        echo "ERROR $skill: missing the standard disclaimer"
        status=1
    fi
done

if [ "$status" -ne 0 ]; then
    echo "local checks FAILED"
    exit 1
fi
echo "local checks passed"
