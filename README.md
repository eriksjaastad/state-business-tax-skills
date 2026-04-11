# State Business Tax Skills

Open-source [Claude Code](https://docs.anthropic.com/en/docs/claude-code) skills for state-level business tax compliance.

State business taxes are wildly inconsistent across the US. Washington has a gross receipts tax (B&O). Texas has a margin-based franchise tax. Ohio has a commercial activity tax. Nevada taxes gross revenue over $4M. Each has its own rates, credits, filing frequencies, and gotchas — and none of it is covered by existing AI tooling.

This project fills that gap. One skill per state, built to the [Agent Skills specification](https://agentskills.io/specification), with accurate rates, source citations, and calculator logic that Claude can apply during real financial work.

## Available Skills

| State | Tax Type | Skill | Status |
|-------|----------|-------|--------|
| Washington | Business & Occupation (B&O) | [`wa-bno-tax`](skills/wa-bno-tax/) | Available |
| Ohio | Commercial Activity Tax (CAT) | `oh-cat` | Planned |
| Texas | Franchise Tax | `tx-franchise-tax` | Planned |
| Nevada | Commerce Tax | `nv-commerce-tax` | Planned |
| Oregon | Commercial Activity Tax (CAT) | `or-cat` | Planned |
| Delaware | Gross Receipts Tax | `de-grt` | Planned |
| Tennessee | Gross Receipts Tax | `tn-grt` | Planned |

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

- **Current tax rates** with tiered structures where applicable
- **Small business credits and exemptions** with phase-out calculations
- **Filing frequency rules** (monthly, quarterly, annual) and due dates
- **Classification guidance** for common business types
- **Calculation examples** with step-by-step math
- **Source citations** linking to official state revenue department pages
- **Common mistakes** that trigger audits or penalties

Skills are written in plain Markdown following the [Agent Skills spec](https://agentskills.io/specification). No dependencies, no runtime — just structured knowledge that Claude can reason with.

## Accuracy and Sources

Every rate, threshold, and deadline in these skills is sourced from official state revenue department publications and current legislation. Source URLs are included in each skill file and its reference documents.

Tax law changes frequently. Each skill includes the legislative session or effective date for its rates. If you find an outdated rate or threshold, please open an issue or PR.

**These skills provide tax guidance with source citations. They are not a substitute for professional tax advice.**

## Contributing

We'd welcome contributions for any of the planned states — or states we haven't listed.

### Adding a New State

1. Copy `template/` to `skills/your-state-code/`
2. Fill in the SKILL.md with your state's tax structure
3. Add a reference document with rate tables and source URLs
4. Test by installing the skill locally and asking Claude to compute a sample tax liability
5. Open a PR

See [`template/SKILL.md`](template/SKILL.md) for the expected structure.

### Updating an Existing Skill

If a state changes its rates or rules (they do, every session), update the skill and its reference doc. Include the bill number or effective date in your commit message.

## Structure

```
state-business-tax-skills/
  skills/
    wa-bno-tax/
      SKILL.md                   # Main skill file
      references/
        rate-tables-2025-2026.md # Detailed rate tables and sources
    oh-cat/                      # (planned)
    tx-franchise-tax/            # (planned)
    ...
  template/
    SKILL.md                     # Starter template for new states
    references/
      rate-tables.md             # Reference document template
```

## License

MIT
