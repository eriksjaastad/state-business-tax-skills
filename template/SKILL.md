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

[Table of current rates. Structure depends on the tax type:]

**Gross receipts taxes** (WA B&O, OH CAT, DE GRT): rates by classification or income tier.

| Classification | Rate | Effective | Source |
|---|---|---|---|
| [Type A] | X.XXX% | [Date] | [State Revenue Dept](https://example.gov/...) |
| [Type B] | X.XXX% | [Date] | [State Revenue Dept](https://example.gov/...) |

**Margin-based taxes** (TX Franchise): rates by entity type (standard, retail/wholesale, EZ).

| Rate Type | Rate | Who Qualifies | Source |
|---|---|---|---|
| [Standard] | X.XX% | [Most entities] | [State Revenue Dept](https://example.gov/...) |
| [Reduced] | X.XX% | [Qualifying entities] | [State Revenue Dept](https://example.gov/...) |

**NAICS-based taxes** (NV Commerce): rates by industry code.

[If rates are tiered, explain the tier structure and what determines which tier applies.]

## Surcharge (if applicable)

[Document any surcharges for high-income businesses — thresholds, rates, effective periods, exemptions. Include Source column. Delete this section if the state has no surcharge.]

## Credits and Exemptions

[Structure depends on the tax type:]

**Gross receipts taxes with credits** (WA B&O): small business credits with phase-out formulas.

| Filing Frequency | Credit Amount | Source |
|---|---|---|
| [Monthly] | $X.XX | [State Revenue Dept](https://example.gov/...) |
| [Quarterly] | $X.XX | [State Revenue Dept](https://example.gov/...) |
| [Annual] | $X.XX | [State Revenue Dept](https://example.gov/...) |

### Phase-Out Formula

```
[Pseudocode for credit calculation. Footnote each threshold with its source.]
```

**Modified gross receipts taxes** (OR CAT): cost subtraction options instead of credits.

**Margin-based taxes** (TX Franchise): multiple margin calculation methods — list each method, per-person caps, and EZ computation option. Also list exempt entity types.

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

[Adapt steps to the tax type. Common patterns:]

**Gross receipts:** Classification → Rate → Gross Tax → Credits → Net Tax → City Taxes
**Modified gross receipts:** Commercial Activity → Subtraction (cost inputs vs labor) → Taxable Amount → Tax → City Taxes
**Margin-based:** Total Revenue → Threshold Check → Choose Margin Method (or EZ) → Apply Rate → Credits → Net Tax

### Step 1: [Determine base amount]
### Step 2: [Apply deductions/subtractions if applicable]
### Step 3: [Compute tax]
### Step 4: [Apply credits]
### Step 5: [Net tax due]
### Step 6: Check for City/Local Taxes

## Example

```
[Worked example with a realistic small business scenario. Use Decimal arithmetic.
Show each step. For margin-based taxes, show all margin methods and identify the lowest.]
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

[Adapt columns to the tax type. Examples:]

Gross receipts:
| Item | Amount |
|---|---|
| Gross Receipts | $XX,XXX.XX |
| Classification | [classification] |
| Rate | X.XX% |
| Gross Tax | $XXX.XX |
| Credits | ($XXX.XX) |
| **Net Tax Due** | **$XXX.XX** |
| Due Date | [date] |

Margin-based:
| Item | Amount |
|---|---|
| Total Revenue | $X,XXX,XXX.XX |
| Margin Method Used | [method] |
| Taxable Margin | $X,XXX,XXX.XX |
| Rate | X.XX% |
| **Net Tax Due** | **$XX,XXX.XX** |
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
