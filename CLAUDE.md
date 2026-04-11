# CLAUDE.md — State Business Tax Skills

## What This Is

A public, open-source collection of Claude Code skills for state-level business tax compliance. Each state gets its own skill directory under `skills/`. The flagship is Washington's B&O tax (`skills/wa-bno-tax/`). A contributor template lives in `template/`.

This is a **public good project** — it should be treated with the same rigor as a published library. Every commit, every number, every source citation matters. People will use this to make real financial decisions.

## Architecture

Pure markdown. No code, no dependencies, no build step.

```
skills/
  wa-bno-tax/
    SKILL.md                       # Skill definition (frontmatter + content)
    references/
      rate-tables-2025-2026.md     # Rates, credits, thresholds with sources
      city-bno.md                  # City overlay rates and filing info
template/
  SKILL.md                         # Starter template for new state contributions
  references/
    rate-tables.md                 # Reference document template
```

Skills follow the [Agent Skills specification](https://agentskills.io/specification). Each skill is self-contained — the SKILL.md references sibling files for detailed rate tables and sources. Claude reads these at invocation time.

## Quality Standards

This project has higher standards than a typical repo. Every change must meet all of these:

### Accuracy is Non-Negotiable
- Every tax rate, threshold, credit amount, and deadline MUST come from an official state revenue department source
- Every rate file includes `last_verified` or effective dates
- Never guess, estimate, or round tax numbers. If you can't verify it, don't include it
- Use Decimal arithmetic in all calculation examples — never floats

### Inline Citations — Every Number One Click From Its Source
Citations are inline, not gathered at the bottom:
- **Tables:** Add a `Source` column with a direct link to the official page for each rate
- **Prose claims:** Use GitHub-flavored markdown footnotes (`[^1]`) with the source URL at the section bottom
- **Formulas:** Footnote the first mention of each threshold or constant
- The References section at the end of each SKILL.md is a **consolidated index**, not the primary citation — inline citations are

### Source Quality
- Every rate and rule links to an official government URL (state DOR, legislature, WAC/RCW)
- Secondary sources (Tax Foundation, Grant Thornton, etc.) supplement but never replace official sources
- If a source URL goes stale, flag it — don't silently remove the citation

### Disclaimers Are Mandatory
Every skill must include: *"This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation."*

### Contributor Experience Matters
- The template must be dead simple to follow
- New state contributions should be possible without touching any existing files
- Keep the barrier to entry as low as possible

## Working in This Repo

### Before Changing Any Tax Data
1. **Verify against official sources.** Open the state DOR website and confirm the current rate. Do not trust cached knowledge or memory.
2. **Check effective dates.** Tax rates change with legislative sessions. Know which rates are current, which are upcoming, and which are expired.
3. **Update `last_verified` or effective dates** in the reference files.

### When Adding a New State
1. Copy `template/` to `skills/{state-code}-{tax-abbreviation}/`
2. Fill in every section — no placeholder text should remain
3. Add a reference document with full rate tables and source URLs
4. Update the Available Skills table in `README.md`
5. Test by installing locally and running realistic queries against Claude

### Commit Messages
Follow conventional commits. Include the state code and any legislation references:
```
feat(wa-bno): add 2027 manufacturing rate increase per HB 2081
fix(wa-bno): correct quarterly phase-out upper bound ($56K, not $55K)
docs: add Ohio CAT skill with 2026 rates
```

## What Not to Do

- **Don't add code.** This is a pure markdown project. No scripts, no YAML configs, no build tools.
- **Don't cover federal taxes.** State business taxes only. Federal is a separate concern.
- **Don't give legal advice.** Frame everything as "guidance with source citations," never as "you should" or "you must" (when addressing the end user about their tax obligations).
- **Don't include historical rates** unless they're needed for context on a recent change. Current rates only.
- **Don't merge without verifying sources.** If a PR adds or changes a tax number, the source URL must be checked before merge.

## File Conventions

- Skill directories: `{two-letter-state-code}-{tax-abbreviation}` (e.g., `wa-bno-tax`, `oh-cat`, `tx-franchise-tax`)
- Skill entry point: always `SKILL.md` with frontmatter (`name`, `description`, `last_verified`)
- Reference docs go in `references/` subdirectory within the skill
- Rate tables include effective dates and source URLs inline

## License

MIT. Maximizes adoption and contribution.
