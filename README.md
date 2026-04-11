# State Business Tax Skills

Open-source [Claude Code](https://docs.anthropic.com/en/docs/claude-code) skills for state-level business tax compliance.

State business taxes are wildly inconsistent across the US. Washington has a gross receipts tax (B&O). Texas has a margin-based franchise tax. Ohio has a commercial activity tax. Nevada taxes gross revenue over $4M. Each has its own rates, credits, filing frequencies, and gotchas — and none of it is covered by existing AI tooling.

This project fills that gap. One skill per state, built to the [Agent Skills specification](https://agentskills.io/specification), with accurate rates, source citations, and calculator logic that Claude can apply during real financial work.

**This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.**

## Available Skills

| State | Tax Type | Skill | Status | Last Verified |
|-------|----------|-------|--------|---------------|
| Washington | Business & Occupation (B&O) | [`wa-bno-tax`](skills/wa-bno-tax/) | Available | 2026-04-11 |
| Ohio | Commercial Activity Tax (CAT) | [`oh-cat`](skills/oh-cat/) | Available | 2026-04-11 |
| Texas | Franchise Tax | `tx-franchise-tax` | Planned | — |
| Nevada | Commerce Tax | `nv-commerce-tax` | Planned | — |
| Oregon | Corporate Activity Tax (CAT) | [`or-cat`](skills/or-cat/) | Available | 2026-04-11 |
| Delaware | Gross Receipts Tax | `de-grt` | Planned | — |
| Tennessee | Gross Receipts Tax | `tn-grt` | Planned | — |

## Planned City Coverage

City-level business taxes are documented within each state's skill. Cities are covered in order of population.

### Washington
- [x] Seattle (Pop. ~750K) — city B&O
- [x] Tacoma (Pop. ~220K) — city B&O
- [x] Bellevue (Pop. ~150K) — city B&O
- [ ] Kent (Pop. ~136K) — city B&O
- [x] Everett (Pop. ~112K) — city B&O
- [ ] Renton (Pop. ~107K) — city B&O
- [ ] Federal Way (Pop. ~100K) — city B&O
- [ ] Bellingham (Pop. ~95K) — city B&O
- [ ] Kirkland (Pop. ~93K) — city B&O
- [ ] Redmond (Pop. ~74K) — city B&O
- [ ] Olympia (Pop. ~55K) — city B&O

### Ohio
- [x] Columbus (Pop. ~900K) — 2.50% municipal net profit tax
- [x] Cleveland (Pop. ~370K) — 2.50% municipal net profit tax
- [x] Cincinnati (Pop. ~310K) — 1.80% municipal net profit tax

### Texas
- [ ] Houston (Pop. ~2.3M)
- [ ] San Antonio (Pop. ~1.5M)
- [ ] Dallas (Pop. ~1.3M)

### Nevada
- [ ] Las Vegas (Pop. ~650K)
- [ ] Henderson (Pop. ~320K)
- [ ] Reno (Pop. ~270K)

### Oregon
- [x] Portland (Pop. ~640K) — city BLT + Multnomah MCBIT + Metro SHS (net income taxes)
- [x] Salem (Pop. ~180K) — no city business tax
- [x] Eugene (Pop. ~175K) — no city business tax

### Delaware
- [ ] Wilmington (Pop. ~70K)
- [ ] Dover (Pop. ~40K)

### Tennessee
- [ ] Nashville (Pop. ~690K)
- [ ] Memphis (Pop. ~630K)
- [ ] Knoxville (Pop. ~190K)

## Installation

Clone a specific skill into your Claude Code skills directory:

```bash
# Install one skill
cp -r skills/wa-bno-tax ~/.claude/skills/wa-bno-tax

# Or install all skills at once
for skill in skills/*/; do
  cp -r "$skill" ~/.claude/skills/$(basename "$skill")
done
```

Claude Code discovers skills automatically from `~/.claude/skills/`. Once installed, Claude activates the skill when you mention relevant keywords (e.g., "WA B&O tax", "Washington business tax", "gross receipts").

## What Each Skill Covers

Every skill in this collection includes:

- **Current tax rates** with tiered structures where applicable, and inline source citations
- **Small business credits and exemptions** with phase-out calculations
- **Filing frequency rules** (monthly, quarterly, annual) and due dates
- **Classification guidance** for common business types
- **Nexus rules** for determining if you owe the tax
- **City/local tax overlays** ordered by population
- **Calculation examples** with step-by-step Decimal arithmetic
- **Source citations** linking to official state revenue department pages — every number is one click from its official source
- **Common mistakes** that trigger audits or penalties

Skills are written in plain Markdown following the [Agent Skills spec](https://agentskills.io/specification). No dependencies, no runtime — just structured knowledge that Claude can reason with.

## Accuracy and Sources

Every rate, threshold, and deadline in these skills is sourced from official state revenue department publications and current legislation. Source URLs are included **inline** — as Source columns in tables and footnotes in prose — so you can verify any number in one click.

Tax law changes frequently. Each skill includes:
- A `last_verified` date in the frontmatter showing when rates were last confirmed
- Effective dates on every rate
- Legislation references (bill numbers, statutes) for rates established by law

If you find an outdated rate or threshold, please open an issue or PR. See the [changelog](CHANGELOG.md) for recent updates.

## Contributing

We welcome contributions for any of the planned states — or states we haven't listed yet.

See [CONTRIBUTING.md](CONTRIBUTING.md) for step-by-step instructions on adding a new state, updating an existing skill, or adding city overlays. Every PR that changes tax data must complete the verification checklist before merge.

## Structure

```
state-business-tax-skills/
  skills/
    wa-bno-tax/
      SKILL.md                          # Main skill file with inline citations
      references/
        rate-tables-2025-2026.md        # Detailed rate tables with sources
        city-bno.md                     # City overlay rates and filing info
    oh-cat/                             # (planned)
    tx-franchise-tax/                   # (planned)
    ...
  template/
    SKILL.md                            # Starter template for new states
    references/
      rate-tables.md                    # Reference document template
```

## License

MIT
