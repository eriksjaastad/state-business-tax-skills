# Contributing

Thank you for helping make state business tax information accessible. Every rate, threshold, and deadline in this project affects real financial decisions — accuracy is non-negotiable.

## Adding a New State

1. **Copy the template:** `cp -r template/ skills/{state-code}-{tax-abbreviation}/`
   - Example: `skills/oh-cat/` for Ohio Commercial Activity Tax
2. **Research official sources:** Find the state revenue department's official rate tables, credit schedules, filing requirements, and nexus rules. Bookmark every URL — you'll need them.
3. **Fill in every section** of SKILL.md. No placeholder text should remain. Every `[State Name]`, `[Tax Abbreviation]`, and `example.gov` must be replaced with real data.
4. **Add inline source citations:**
   - Tables: add a `Source` column with a direct link to the official page for each rate
   - Prose claims: use GitHub-flavored markdown footnotes (`[^1]`) with the source URL
   - Formulas: footnote the first mention of each threshold or constant
5. **Fill in the reference document** (`references/rate-tables.md`) with detailed rate tables, credit schedules, and nexus thresholds — all with Source columns.
6. **Set `last_verified`** in SKILL.md frontmatter to today's date.
7. **Test locally:**
   ```bash
   cp -r skills/{your-state}/ ~/.claude/skills/{your-state}/
   ```
   Then ask Claude a realistic tax question and verify the response is accurate.
8. **Open a PR** with the verification checklist below completed.

## Updating an Existing Skill

When a state changes its rates or rules (they do, every legislative session):

1. Update the affected rates in both SKILL.md and the reference document.
2. Verify the new rates against the official state revenue department page.
3. Update `last_verified` in SKILL.md frontmatter to today's date.
4. Update inline source citations if URLs have changed.
5. Add a CHANGELOG.md entry with the change, effective date, and legislation reference.
6. Include the bill number or effective date in your commit message.

## Adding City Overlays

Some states have cities that impose additional business taxes on top of the state tax. To add a city:

1. If the state skill doesn't have a `references/city-*.md` file yet, create one following the format in `skills/wa-bno-tax/references/city-bno.md`.
2. Add the city in **population order** (largest first).
3. Include: city name, population, tax type, rates by classification, exemption threshold, filing frequency, filing URL, and source citations for every rate.
4. Every rate and threshold needs an official city government source URL.

## Verification Checklist

Before submitting a PR that adds or changes tax data, complete every item:

- [ ] Every tax rate has an inline source URL (Source column in tables, footnote in prose)
- [ ] Source URLs point to official government domains (state/city .gov)
- [ ] Every rate includes its effective date
- [ ] All template sections are filled — no placeholder text remains
- [ ] `last_verified` in SKILL.md frontmatter is set to today's date
- [ ] Disclaimer is present in SKILL.md
- [ ] Calculation example produces correct results when verified manually with Decimal arithmetic
- [ ] Installed locally and tested with a realistic query
- [ ] CHANGELOG.md updated with the change, effective date, and source
- [ ] README.md Available Skills table updated (if adding a new skill — set status to "Available" with today's date)

## Commit Message Format

Use conventional commits with the state code as scope:

```
feat(wa-bno): add 2027 manufacturing rate increase per HB 2081
fix(oh-cat): correct annual filing threshold ($150K, not $100K)
docs(tx-franchise): update nexus section with 2026 comptroller ruling
feat: add Tennessee gross receipts tax skill
```

Include legislation references (bill numbers, RCW, ORC, etc.) in the commit message body when applicable.

## Code of Conduct

- **Be accurate.** If you can't verify a number against an official source, don't include it.
- **Cite everything.** Every rate and rule links to its official source.
- **Be respectful.** Tax law is complex and reasonable people can disagree on interpretations. Discuss, don't argue.
