---
name: tx-franchise-tax
description: Texas Franchise Tax (margin tax) calculator for businesses. Computes tax using 4 margin methods, EZ computation, retail/wholesale rates, and no-tax-due thresholds. Triggers on Texas franchise tax, Texas margin tax, Texas business tax.
last_verified: 2026-04-11
---

# Texas Franchise Tax Calculator

> Compute Texas Franchise Tax liability using margin-based calculations. Handles 4 margin methods, retail/wholesale rate (0.375%) vs. standard rate (0.75%), EZ computation (0.331%), no-tax-due threshold ($2.65M), and annual filing per Texas Comptroller rules.

## When to Activate

- User mentions "Texas franchise tax", "Texas margin tax", "Texas business tax", "Texas Comptroller"
- Computing annual franchise tax liability
- Choosing between margin calculation methods
- Evaluating EZ computation eligibility
- Any business formed in or doing business in Texas

## What This Tax Is

Texas Franchise Tax is a **margin-based privilege tax** on entities formed in or doing business in Texas. Unlike gross receipts taxes (WA B&O, OH CAT), the Texas franchise tax is computed on **taxable margin** — total revenue minus allowable deductions. This makes it a hybrid between income tax and gross receipts tax[^1].

The tax applies to **corporations, LLCs, partnerships, banks, S-corps, trusts, and other legal entities**. Sole proprietorships and general partnerships composed entirely of natural persons are **exempt**[^1].

Texas has **no corporate income tax and no personal income tax**. The franchise tax is the primary business-level tax.

[^1]: [Texas Comptroller — Franchise Tax Overview](https://comptroller.texas.gov/taxes/publications/98-806.php)

## Rate Structure

| Rate Type | Rate | Who Qualifies | Source |
|---|---|---|---|
| Standard | 0.75% | Most entities | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| Retail/Wholesale | 0.375% | Entities primarily in retail or wholesale trade | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| EZ Computation | 0.331% | Entities with total revenue ≤$20M | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |

### No-Tax-Due Threshold

| Report Year | Threshold | Source |
|---|---|---|
| 2026-2027 | $2,650,000 | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| 2024-2025 | $2,470,000 | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |

Entities below the no-tax-due threshold owe no tax but **must still file** a franchise tax report (No Tax Due Information Report)[^1].

## Surcharge

Texas does not impose an additional surcharge on the franchise tax.

## Credits and Exemptions

### Margin Calculation — 4 Methods

The tax base is **taxable margin**, calculated as total revenue minus the **lowest** of four options[^2]:

1. **70% of total revenue** (automatic floor)
2. **Total revenue minus cost of goods sold (COGS)**
3. **Total revenue minus compensation** (subject to per-person cap)
4. **Total revenue minus $1,000,000** (flat deduction)

The taxpayer chooses the method producing the **lowest margin** (and therefore lowest tax).

[^2]: [TX Comptroller — Franchise Tax Overview](https://comptroller.texas.gov/taxes/publications/98-806.php) and [2026 Franchise Tax Instructions](https://comptroller.texas.gov/forms/05-915.pdf)

### Per-Person Compensation Cap

| Report Year | Cap Per Person | Source |
|---|---|---|
| 2026 | $480,000 | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| 2025 | $450,000 | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |

Compensation includes W-2 wages, officer/owner compensation, and deductible employee benefits. Does **not** include 1099 contractor payments[^2].

### EZ Computation

Entities with total revenue of **$20 million or less** may elect the EZ Computation at 0.331% of total revenue. EZ filers **cannot** use the COGS, compensation, or $1M deductions and **cannot** claim credits[^2].

### Exempt Entities

| Entity Type | Source |
|---|---|
| Sole proprietorships | [TX Comptroller](https://comptroller.texas.gov/taxes/publications/98-806.php) |
| General partnerships of natural persons only | [TX Comptroller](https://comptroller.texas.gov/taxes/publications/98-806.php) |
| Certain passive entities | [TX Comptroller](https://comptroller.texas.gov/taxes/publications/98-806.php) |
| Certain REITs | [TX Comptroller](https://comptroller.texas.gov/taxes/publications/98-806.php) |

### Tax Credits

Available credits include[^1]:
- Business loss carryforwards
- Research and development activities
- Certified historic structures rehabilitation

## Filing Requirements

### Filing Due Date

| Item | Detail | Source |
|---|---|---|
| Annual report due | May 15 | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| Late penalty (1-30 days) | 5% of tax | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| Late penalty (>30 days) | 10% of tax | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| Late report penalty | $50 per report | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |
| Interest | Accrues 61+ days after due date | [TX Comptroller](https://comptroller.texas.gov/taxes/franchise/) |

Extensions must be requested by the original due date. File through the [Comptroller's Webfile portal](https://comptroller.texas.gov/taxes/file-pay/).

### Who Must File

All entities formed or organized in Texas or doing business in Texas must file a franchise tax report, **even if no tax is due**. The No Tax Due Information Report is filed if total revenue is below the threshold[^1].

## Nexus

A taxable entity has nexus if it is **doing business in Texas**, which includes[^1]:
- Having a physical presence in Texas (office, employees, inventory)
- Having gross receipts from Texas sources
- Being organized under Texas law

Texas uses a broad "doing business" standard. If revenue is sourced to Texas, the entity generally has franchise tax obligations.

## City/Local Tax Overlays

Texas cities do not impose a separate franchise tax or margin tax. The franchise tax is a state-level tax only. Houston, San Antonio, and Dallas do not have additional business profit taxes.

Some Texas cities impose other business-related taxes (hotel occupancy, mixed beverage, etc.) but none parallel the franchise tax.

## Calculation Process

### Step 1: Determine Total Revenue
Sum all revenue from Texas business activity. Exclude dividends/interest on government bonds, Schedule C dividends, and foreign royalties.

### Step 2: Check No-Tax-Due Threshold
- At or below $2,650,000 (2026): File No Tax Due report. No tax owed.
- Over threshold: Proceed to Step 3.

### Step 3: Choose Margin Method (or EZ)
**If total revenue ≤$20M**, consider EZ Computation: `tax = 0.00331 × total_revenue`

**Otherwise**, compute all four margin methods and use the lowest:
```
margin_70pct = 0.70 × total_revenue
margin_cogs = total_revenue - cost_of_goods_sold
margin_comp = total_revenue - compensation  # per-person cap applies
margin_1m = total_revenue - $1,000,000
taxable_margin = min(margin_70pct, margin_cogs, margin_comp, margin_1m)
```

### Step 4: Apply Rate
```
If retail/wholesale:  tax = 0.00375 × taxable_margin
Otherwise:            tax = 0.0075 × taxable_margin
```

### Step 5: Apply Credits
Subtract any available credits (R&D, historic structures, loss carryforward).

## Example: Texas Software Company

```
Total revenue: $5,000,000
COGS: $800,000
Compensation: $2,200,000 (all under $480K/person cap)
Entity type: Non-retail/wholesale

Margin Method 1: 70% × $5,000,000 = $3,500,000
Margin Method 2: $5,000,000 - $800,000 = $4,200,000
Margin Method 3: $5,000,000 - $2,200,000 = $2,800,000  ← lowest
Margin Method 4: $5,000,000 - $1,000,000 = $4,000,000

Taxable margin: $2,800,000 (compensation method)
Tax: $2,800,000 × 0.0075 = $21,000.00

EZ comparison: $5,000,000 × 0.00331 = $16,550.00  ← lower!

Best choice: EZ Computation at $16,550.00
Due date: May 15
```

## Common Mistakes

1. **Not comparing all four margin methods** — Always compute all four and use the lowest. The best method varies by business type[^2]
2. **Forgetting EZ computation** — For entities under $20M, EZ at 0.331% is often cheaper than any margin method
3. **Including 1099 contractors in compensation** — Only W-2 wages and officer/owner compensation qualify for the compensation deduction[^2]
4. **Exceeding per-person cap** — Compensation over $480,000 (2026) per person is not deductible[^2]
5. **Not filing because under threshold** — Even entities below $2.65M must file a No Tax Due report[^1]
6. **Using the wrong rate** — Retail/wholesale entities pay 0.375%, not 0.75%. Verify your primary business activity
7. **Missing the May 15 deadline** — Texas franchise tax is due May 15, not April 15 like most other state taxes

## References

### Official Texas Comptroller
- [Franchise Tax Overview](https://comptroller.texas.gov/taxes/publications/98-806.php)
- [Franchise Tax Main Page](https://comptroller.texas.gov/taxes/franchise/)
- [2026 Franchise Tax Instructions](https://comptroller.texas.gov/forms/05-915.pdf)
- [2026 Report Forms](https://comptroller.texas.gov/taxes/franchise/forms/2026-franchise.php)
- [EZ Computation Form](https://comptroller.texas.gov/forms/05-169-a-26.pdf)
- [Webfile Portal](https://comptroller.texas.gov/taxes/file-pay/)

### Texas Tax Code
- [Chapter 171 — Franchise Tax](https://statutes.capitol.texas.gov/Docs/TX/htm/TX.171.htm)

## Output Format

When computing franchise tax, present results as:

```markdown
## Texas Franchise Tax — [Report Year]

| Item | Amount |
|---|---|
| Total Revenue | $X,XXX,XXX.XX |
| Margin Method Used | [70% / COGS / Compensation / $1M deduction / EZ] |
| Taxable Margin | $X,XXX,XXX.XX |
| Rate | X.XXX% |
| Gross Tax | $XX,XXX.XX |
| Credits | ($X,XXX.XX) |
| **Net Tax Due** | **$XX,XXX.XX** |
| Due Date | May 15, [Year] |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST compute all four margin methods and use the lowest (unless EZ elected)
- MUST compare EZ computation to margin methods when revenue ≤$20M
- MUST apply the per-person compensation cap ($480,000 for 2026)
- MUST NOT include 1099 contractor payments in the compensation deduction
- MUST note that entities below the no-tax-due threshold must still file
- MUST use May 15 due date (not April 15)
- MUST warn if total revenue approaches the no-tax-due threshold within 10%
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST cite sources when presenting rates or thresholds to the user

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
