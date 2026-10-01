#!/usr/bin/env bash
# Local checks for state-business-tax-skills (#7828): the frontmatter,
# placeholder, disclaimer and freshness jobs of .github/workflows/validate.yml.
# The shared pre-push runs this with LOCAL_CHECKS_SHA/LOCAL_CHECKS_BASE set
# (claude-user-config hooks/git-local-checks.py); run it by hand from the repo
# root to check everything. Freshness only warns, as it did on GitHub.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

sha="${LOCAL_CHECKS_SHA:-HEAD}"

# True when any given path changed since LOCAL_CHECKS_BASE; always true without
# one. If the diff itself fails, say so and treat every path as changed, so a
# broken diff runs the gated suites instead of silently skipping them.
changed() {
    [ -z "${LOCAL_CHECKS_BASE:-}" ] && return 0
    local paths
    if ! paths="$(git diff --name-only "$LOCAL_CHECKS_BASE" "$sha" -- "$@")"; then
        echo "local checks: cannot diff $LOCAL_CHECKS_BASE..$sha; running the gated checks" >&2
        return 0
    fi
    [ -n "$paths" ]
}

if ! changed skills/ template/; then
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
