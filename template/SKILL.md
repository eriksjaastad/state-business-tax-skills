---
name: xx-tax-name
description: "[State Name] [Tax Name] calculator for self-employed and small businesses. Computes rates, credits, filing deadlines. Triggers on [state name] business tax, [tax name], [common abbreviation]."
last_verified: YYYY-MM-DD
---

# [State Name] [Tax Name] Calculator

> Compute [State] [Tax Name] liability for self-employed individuals and small businesses.

## When to Activate

- User mentions "[state] business tax", "[tax abbreviation]", "[department name] filing"
- Computing quarterly or annual tax liability
- Estimating credit eligibility
- Any business operating in [State]

## What This Tax Is

[1-2 paragraph explanation of the tax: what it applies to (gross receipts, margins, net income), how it differs from federal income tax, and who must pay it. Cite the official state revenue department page.]

[^1]: [State Revenue Department — Tax Overview](https://example.gov/...)

## Rate Structure

[Table of current rates by classification or income tier. Include effective dates and Source column.]

| Classification | Rate | Effective | Source |
|---|---|---|---|
| [Type A] | X.XXX% | [Date] | [State Revenue Dept](https://example.gov/...) |
| [Type B] | X.XXX% | [Date] | [State Revenue Dept](https://example.gov/...) |

[If rates are tiered, explain the tier structure and what determines which tier applies.]

## Surcharge (if applicable)

[Document any surcharges for high-income businesses — thresholds, rates, effective periods, exemptions. Include Source column. Delete this section if the state has no surcharge.]

## Credits and Exemptions

[Small business credits, phase-out calculations, exemption thresholds. Include Source column in tables.]

| Filing Frequency | Credit Amount | Source |
|---|---|---|
| [Monthly] | $X.XX | [State Revenue Dept](https://example.gov/...) |
| [Quarterly] | $X.XX | [State Revenue Dept](https://example.gov/...) |
| [Annual] | $X.XX | [State Revenue Dept](https://example.gov/...) |

### Phase-Out Formula

```
[Pseudocode for credit calculation. Footnote each threshold with its source.]
```

[^2]: [State Revenue Dept — Credit Tables](https://example.gov/...)

## Filing Requirements

### Who Must File

[Thresholds, registration requirements. Cite the statute or official page.]

### Filing Frequency and Due Dates

| Frequency | Threshold | Due Date | Source |
|---|---|---|---|
| Annual | $X | [Date] | [State Revenue Dept](https://example.gov/...) |
| Quarterly | $X | [Date] | [State Revenue Dept](https://example.gov/...) |
| Monthly | $X | [Date] | [State Revenue Dept](https://example.gov/...) |

## Nexus

[Describe what creates a tax obligation in this state: physical presence, economic thresholds, domicile. Cite the statute (RCW, ORC, etc.).]

- **Physical presence** — [description][^3]
- **Economic nexus** — [threshold amount and conditions][^3]

[^3]: [State Revenue Dept — Nexus Guide](https://example.gov/...)

## City/Local Tax Overlays

[Summary of whether cities in this state impose additional business taxes. If yes, reference the city overlay document in `references/city-*.md`. If no local taxes exist, state that explicitly.]

## Calculation Process

### Step 1: Determine Classification
### Step 2: Determine Rate
### Step 3: Compute Gross Tax
### Step 4: Apply Credits
### Step 5: Net Tax Due
### Step 6: Check for City/Local Taxes

## Example

```
[Worked example with a realistic small business scenario. Use Decimal arithmetic.
Show each step: gross receipts, classification, rate, gross tax, credit, net tax.]
```

## Common Mistakes

1. [Mistake — with footnote to source if applicable]
2. [Mistake]
3. [Mistake]
4. [Mistake]
5. [Mistake]

## References

### Official [State Revenue Department Name]
- [Tax Overview](https://example.gov/...)
- [Rate Tables](https://example.gov/...)
- [Credit/Exemption Info](https://example.gov/...)
- [Filing Information](https://example.gov/...)
- [Nexus Guide](https://example.gov/...)

### Legislation
- [Relevant statute](https://example.gov/...)

## Output Format

When computing tax, present results as:

```markdown
## [State] [Tax Name] — [Period]

| Item | Amount |
|---|---|
| Gross Receipts | $XX,XXX.XX |
| Classification | [classification] |
| Rate | X.XX% |
| Gross Tax | $XXX.XX |
| Credits | ($XXX.XX) |
| **Net Tax Due** | **$XXX.XX** |
| Due Date | [date] |

*City/Local Tax (if applicable):*
| Jurisdiction | Rate | Tax Due |
|---|---|---|
| [City] | X.XXX% | $XXX.XX |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST cite sources when presenting rates or thresholds
- MUST note effective dates for any rates that changed recently
- MUST warn about local/city taxes where applicable
- MUST warn if gross receipts approach a rate tier threshold within 10%
- MUST warn and show extrapolation method when estimating annual liability from partial-year data

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
