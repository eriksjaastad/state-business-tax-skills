---
name: de-grt
description: Delaware Gross Receipts Tax calculator for businesses. Computes tax by business category (0.0945%-1.9914%) with monthly exclusions. Triggers on Delaware gross receipts, Delaware business tax, Delaware GRT.
last_verified: 2026-04-11
---

# Delaware Gross Receipts Tax Calculator

> Compute Delaware Gross Receipts Tax liability by business category. Handles category-specific rates (0.0945%–1.9914%), monthly exclusion amounts, and monthly/quarterly filing per Delaware Division of Revenue rules.

## When to Activate

- User mentions "Delaware gross receipts", "Delaware business tax", "Delaware GRT", "Delaware occupational tax"
- Computing monthly or quarterly gross receipts tax
- Determining which business category applies in Delaware
- Evaluating monthly exclusion amounts
- Any business with gross revenue from Delaware activities

## What This Tax Is

Delaware's Gross Receipts Tax (GRT) is a tax on the **total gross revenues** of a business, regardless of source. Like Washington's B&O tax, it applies to gross receipts with **no deductions for cost of goods sold, labor, interest, delivery costs, taxes, or other business expenses**[^1].

Rates vary by **business category** — retailers, wholesalers, manufacturers, service providers, and other categories each have different rates. Most categories also receive a **monthly exclusion** that exempts a portion of receipts from tax.

Delaware has **no sales tax**, making the GRT the state's primary consumption-related business tax.

[^1]: [Delaware Division of Revenue — Gross Receipts Tax FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/)

## Rate Structure

Rates range from 0.0945% to 1.9914%, with monthly exclusion amounts varying by category[^2].

### Major Business Categories

| Category | Rate | Monthly Exclusion | Source |
|---|---|---|---|
| Retailers | 0.7468% | $100,000 | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Wholesalers | 0.3983% | $10,000 | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Manufacturers | 0.0945% | $1,250,000 | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| General services (occupations) | 0.3983% | $100,000 | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Contractors | 0.6534% | $100,000 | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Food processors | 0.1883% | $100,000 | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Petroleum products | Variable (up to 2.4218%) | Varies | [DE Division of Revenue](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |

The complete rate schedule with all 50+ categories is available at the [Delaware Division of Revenue Rates PDF](https://revenuefiles.delaware.gov/docs/gr_rates.pdf).

[^2]: [Delaware Division of Revenue — GRT Rates](https://revenuefiles.delaware.gov/docs/gr_rates.pdf) and [Delaware Division of Revenue — Step 4: Gross Receipts](https://revenue.delaware.gov/business-tax-forms/doing-business-in-delaware/step-4-gross-receipts-taxes/)

### Multiple Business Activities

Businesses with income from **multiple categories** must file separate gross receipts tax returns for each activity type. Each activity is taxed at its own rate with its own exclusion[^1].

## Surcharge

Delaware does not impose an additional surcharge on the GRT for high-grossing businesses.

## Credits and Exemptions

### Monthly Exclusion

Each business category has a monthly exclusion amount — receipts below this amount are not taxed. The exclusion resets each month (or quarter for quarterly filers). Exclusions range from $10,000 (wholesalers) to $1,250,000 (manufacturers)[^2].

### Exempt Transactions

- Out-of-state shipments where the seller ships directly to the customer outside Delaware[^1]
- Wholesale sales picked up in-state with Form 373 (Wholesale Exemption Certificate)[^1]

### No Cost Deductions

Unlike Oregon's CAT, Delaware's GRT allows **no deductions** for cost of goods, labor, interest, discounts, delivery costs, or taxes paid[^1].

## Filing Requirements

### Filing Frequency

| Frequency | Criteria | Due Date | Source |
|---|---|---|---|
| Monthly | Higher-revenue businesses (based on look-back period) | 20th of following month | [DE GRT FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Quarterly | Smaller businesses / new businesses (default) | Last day of month after quarter-end | [DE GRT FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |

Filing frequency is assigned based on gross receipts during a look-back period. New businesses default to quarterly filing.

### Filing Method

**Mandatory electronic filing** since January 1, 2021 via [tax.delaware.gov](https://tax.delaware.gov)[^1].

### Penalties

| Penalty | Amount | Source |
|---|---|---|
| Late filing | 5% per month | [DE GRT FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Late filing interest | 0.5% per month from due date | [DE GRT FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |
| Non-payment | Additional 1% monthly (max 25%) | [DE GRT FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/) |

## Nexus

Delaware taxes gross receipts from business activity conducted within the state. Out-of-state shipments where the seller ships directly to customers outside Delaware are exempt. Interstate sales taken delivery in Delaware remain taxable[^1].

For businesses unsure about Delaware nexus, contact the Gross Receipts Department at (302) 577-8780 or grt@delaware.gov.

## City/Local Tax Overlays

Delaware's major cities (Wilmington, Dover) do not impose separate city-level gross receipts taxes. The GRT is a state-level tax only. Wilmington has a city wage tax (1.25%) but no additional business gross receipts tax.

## Calculation Process

### Step 1: Determine Business Category
Identify which GRT category applies. If multiple activities, file separately for each.

### Step 2: Apply Monthly Exclusion
Subtract the monthly exclusion for your category.

### Step 3: Compute Tax
```
monthly_tax = rate × max(monthly_gross_receipts - monthly_exclusion, 0)
```

### Step 4: File Monthly or Quarterly
Sum monthly calculations for quarterly filers.

## Example: Delaware Retailer

```
Monthly gross receipts: $250,000
Category: Retailer
Rate: 0.7468%
Monthly exclusion: $100,000

Taxable receipts: $250,000 - $100,000 = $150,000
Monthly tax: $150,000 × 0.007468 = $1,120.20

Annual estimate: $1,120.20 × 12 = $13,442.40
```

## Common Mistakes

1. **Forgetting the monthly exclusion** — Each category has an exclusion that significantly reduces tax for smaller businesses[^2]
2. **Deducting expenses** — GRT is on gross receipts with no deductions for COGS, labor, or any costs[^1]
3. **Single return for multiple activities** — Businesses with revenue from different categories must file separate returns for each[^1]
4. **Confusing with sales tax** — Delaware has no sales tax. GRT is paid by the business on its receipts, not collected from customers
5. **Missing electronic filing requirement** — All GRT returns must be filed electronically since 2021[^1]
6. **Wrong exclusion amount** — Exclusions vary dramatically by category ($10K for wholesalers vs. $1.25M for manufacturers)[^2]
7. **Quarterly filers using monthly exclusion** — Quarterly filers get quarterly exclusion amounts (3× monthly), not monthly

## References

### Official Delaware Division of Revenue
- [Gross Receipts Tax FAQs](https://revenue.delaware.gov/frequently-asked-questions/gross-receipts-tax-faqs/)
- [Step 4: Learn About Gross Receipts Taxes](https://revenue.delaware.gov/business-tax-forms/doing-business-in-delaware/step-4-gross-receipts-taxes/)
- [Complete Rate Schedule (PDF)](https://revenuefiles.delaware.gov/docs/gr_rates.pdf)
- [Business Tax Forms](https://revenue.delaware.gov/business-tax-forms/)
- [Delaware Taxpayer Portal](https://tax.delaware.gov)

### Legislation
- [Title 30, Chapter 23 — Gross Receipts Tax](https://delcode.delaware.gov/title30/c023/index.html)

## Output Format

When computing GRT, present results as:

```markdown
## Delaware Gross Receipts Tax — [Period]

| Item | Amount |
|---|---|
| Gross Receipts | $XX,XXX.XX |
| Category | [Category Name] |
| Rate | X.XXXX% |
| Monthly Exclusion | ($XXX,XXX.XX) |
| Taxable Receipts | $XX,XXX.XX |
| **Tax Due** | **$XXX.XX** |
| Due Date | [date] |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST NOT suggest deducting expenses from gross receipts
- MUST apply the correct monthly exclusion for the business category
- MUST file separate returns for multiple business activities
- MUST note mandatory electronic filing requirement
- MUST warn if gross receipts approach a category's exclusion threshold
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST cite sources when presenting rates or thresholds to the user
- MUST reference the official rate PDF for categories not listed in this skill

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
