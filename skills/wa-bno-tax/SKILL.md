---
name: wa-bno-tax
description: Washington State Business & Occupation (B&O) tax calculator for self-employed and small businesses. Computes tiered rates, small business credit, quarterly estimates, and filing deadlines. Triggers on WA B&O, Washington business tax, gross receipts tax, DOR filing.
---

# Washington State B&O Tax Calculator

> Compute WA Business & Occupation tax liability for self-employed individuals and small businesses. Handles tiered Service & Other Activities rates, small business credit phase-out, quarterly estimated payments, and filing deadlines per WA DOR rules.

## When to Activate

- User mentions "B&O tax", "Washington business tax", "WA gross receipts", "DOR filing"
- Computing quarterly or annual B&O liability
- Estimating small business credit eligibility
- Preparing WA excise tax return data
- Any Schedule C business operating in Washington State

## What B&O Tax Is

Washington's B&O tax is a **gross receipts tax** — it applies to total revenue, not profit. There are **no deductions for expenses**. This makes it fundamentally different from federal income tax. A business that grosses $150K but nets $50K pays B&O on the full $150K.

## Rate Structure — Service & Other Activities (Effective Oct 1, 2025)

Most self-employed professionals (software engineers, consultants, freelancers) fall under **Service & Other Activities**.

| Prior Year Gross Income | Rate | Annual Tax on $134K |
|---|---|---|
| Under $1,000,000 | 1.50% | $2,010 |
| $1,000,000 – $4,999,999 | 1.75% | N/A |
| $5,000,000+ | 2.10% | N/A |

### Other Common Classifications

| Classification | Rate |
|---|---|
| Retailing | 0.471% |
| Wholesaling | 0.484% |
| Manufacturing | 0.484% |
| Child Care | 0.484% |

**If income spans multiple classifications**, report each portion under its own classification. The Multiple Activities Tax Credit (MATC) prevents double-taxation.

## Small Business B&O Tax Credit

The credit **can reduce or eliminate** B&O tax for small businesses.

### Service & Other Activities Credit

- **$160/month** ($480/quarter, $1,920/year)
- Must report ≥50% of B&O taxable amount under Service & Other Activities

### Phase-Out (Quarterly Filing)

| Quarterly Gross | Credit | Effective Tax |
|---|---|---|
| Under $28,000 | Full ($480) | $0 |
| $28,000 – $56,000 | Partial (linear phase-out) | Reduced |
| Over $56,000 | $0 | Full 1.5% |

### Phase-Out Formula

```
If quarterly_gross <= $28,000:
    credit = $480
elif quarterly_gross <= $56,000:
    ratio = (quarterly_gross - $28,000) / $28,000
    credit = $480 × (1 - ratio)
else:
    credit = $0

tax_due = (quarterly_gross × 0.015) - credit
tax_due = max(tax_due, 0)
```

### Annual Filing (if eligible)

- Full credit under $112,000/year
- Phase-out $112,000 – $224,000/year
- No credit above $224,000/year
- Annual filing threshold: **$250,000** (raised from $125K effective 2025)

## Filing Requirements

### Who Must File

Any business with gross receipts from Washington activities, unless:
- Annual gross under $250,000 AND no other taxes/fees owed to DOR

### Filing Frequency

| Annual Gross | Frequency |
|---|---|
| Under $250,000 | Annual (due April 15) |
| $250,000 – varies | Quarterly (due end of month after quarter) |
| High volume | Monthly (due 25th of following month) |

### Quarterly Due Dates

| Quarter | Period | Due Date |
|---|---|---|
| Q1 | Jan 1 – Mar 31 | April 30 |
| Q2 | Apr 1 – Jun 30 | July 31 |
| Q3 | Jul 1 – Sep 30 | October 31 |
| Q4 | Oct 1 – Dec 31 | January 31 |

## Calculation Process

### Step 1: Determine Classification
Most self-employed professionals → **Service & Other Activities**

### Step 2: Determine Rate Tier
Check prior year gross income against thresholds ($1M, $5M).

### Step 3: Compute Gross Tax
```
gross_tax = gross_receipts × rate
```

### Step 4: Apply Small Business Credit
Use the phase-out formula above based on filing frequency.

### Step 5: Net Tax Due
```
net_tax = max(gross_tax - credit, 0)
```

## Example: Self-Employed Software Engineer

```
Annual gross receipts: $134,400 ($11,200/month)
Classification: Service & Other Activities
Rate tier: Under $1M → 1.5%
Filing: Quarterly (gross > threshold for annual)

Q1 gross: $33,600
Gross tax: $33,600 × 0.015 = $504.00
Credit ratio: ($33,600 - $28,000) / $28,000 = 0.200
Credit: $480 × (1 - 0.200) = $384.00
Net Q1 tax: $504.00 - $384.00 = $120.00

Annual estimate: ~$480 in B&O tax (after credits)
```

## Common Mistakes

1. **Deducting expenses** — B&O is on gross receipts, not net income
2. **Missing the credit** — Many small businesses qualify but don't claim it
3. **Wrong classification** — Software consulting is Service, not Retailing
4. **Ignoring city B&O** — Seattle has its own B&O tax (separate from state)
5. **Not filing because "under threshold"** — The $250K threshold only applies if you owe NO other taxes to DOR

## City B&O Taxes (Additional)

Some WA cities impose their own B&O tax on top of state B&O:
- **Seattle**: 0.415% on service businesses (separate filing via seattle.gov)
- **Tacoma**, **Everett**, **Bellingham**: Various rates and thresholds

If the business operates from a city with B&O, compute both state and city liability.

## References

- [WA DOR B&O Tax Overview](https://dor.wa.gov/taxes-rates/business-occupation-tax)
- [B&O Tax Classifications & Rates](https://dor.wa.gov/find-taxes-rates/business-occupation-tax/business-occupation-tax-classifications)
- [Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables)
- [HB 2081 — Tiered Rate Changes](https://www.grantthornton.com/insights/alerts/tax/2025/salt/u-z/wa-increases-bo-tax-expanding-taxation-of-services-06-13)
- IRS has no role — B&O is a Washington state tax, not federal

## Output Format

When computing B&O tax, present results as:

```markdown
## WA B&O Tax — [Period]

| Item | Amount |
|---|---|
| Gross Receipts | $XX,XXX.XX |
| Classification | Service & Other Activities |
| Rate | 1.50% |
| Gross Tax | $XXX.XX |
| Small Business Credit | ($XXX.XX) |
| **Net B&O Tax Due** | **$XXX.XX** |
| Due Date | [date] |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST NOT suggest deducting expenses from B&O gross receipts
- MUST check for city B&O liability in addition to state
- MUST use current year's rate constants from `data/tax_constants.yaml` if in tax-organizer project
- MUST warn if gross receipts approach tier thresholds ($1M, $5M)
- MUST note that B&O is filed via WA DOR excise tax return, not IRS
