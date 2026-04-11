---
name: xx-tax-name
description: [State Name] [Tax Name] calculator for self-employed and small businesses. Computes rates, credits, filing deadlines. Triggers on [state name] business tax, [tax name], [common abbreviation].
---

# [State Name] [Tax Name] Calculator

> Compute [State] [Tax Name] liability for self-employed individuals and small businesses.

## When to Activate

- User mentions "[state] business tax", "[tax abbreviation]", "[department name] filing"
- Computing quarterly or annual tax liability
- Estimating credit eligibility
- Any business operating in [State]

## What This Tax Is

[1-2 paragraph explanation of the tax: what it applies to (gross receipts, margins, net income), how it differs from federal income tax, and who must pay it.]

## Rate Structure

[Table of current rates by classification or income tier. Include effective dates.]

| Classification | Rate | Notes |
|---|---|---|
| ... | ...% | ... |

## Credits and Exemptions

[Small business credits, phase-out calculations, exemption thresholds.]

### Phase-Out Formula

```
[Pseudocode for credit calculation]
```

## Filing Requirements

### Who Must File

[Thresholds, nexus rules, registration requirements.]

### Filing Frequency and Due Dates

| Frequency | Threshold | Due Date |
|---|---|---|
| Annual | ... | ... |
| Quarterly | ... | ... |
| Monthly | ... | ... |

## Calculation Process

### Step 1: Determine Classification
### Step 2: Determine Rate
### Step 3: Compute Gross Tax
### Step 4: Apply Credits
### Step 5: Net Tax Due

## Example

```
[Worked example with a realistic small business scenario]
```

## Common Mistakes

1. ...
2. ...

## References

- [Official state revenue department link]
- [Relevant legislation]
- [Rate tables or publications]

## Output Format

When computing tax, present results as:

```markdown
## [State] [Tax Name] — [Period]

| Item | Amount |
|---|---|
| Gross Receipts | $XX,XXX.XX |
| Classification | ... |
| Rate | X.XX% |
| Gross Tax | $XXX.XX |
| Credits | ($XXX.XX) |
| **Net Tax Due** | **$XXX.XX** |
| Due Date | [date] |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations
- MUST cite sources for rates and thresholds
- MUST note effective dates for any rates that changed recently
- MUST warn about local/city taxes where applicable
