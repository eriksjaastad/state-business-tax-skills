---
name: nv-commerce-tax
description: Nevada Commerce Tax calculator for businesses. Computes tax on gross revenue over $4M with rates varying by NAICS industry code. Triggers on Nevada commerce tax, Nevada business tax, Nevada gross revenue tax.
last_verified: 2026-04-11
---

# Nevada Commerce Tax Calculator

> Compute Nevada Commerce Tax liability for businesses with Nevada gross revenue over $4M. Handles NAICS-based industry rates (0.051%–0.331%), July-June fiscal year, and annual filing per NRS 363C.

## When to Activate

- User mentions "Nevada commerce tax", "Nevada business tax", "NRS 363C"
- Computing annual commerce tax liability
- Determining the correct NAICS category for a Nevada business
- Evaluating whether a business exceeds the $4M threshold
- Any business with gross revenue from Nevada activities

## What This Tax Is

Nevada's Commerce Tax is a **gross revenue tax** imposed on businesses with more than $4 million in Nevada gross revenue per fiscal year (July 1 – June 30). Tax rates vary by **NAICS industry code** — different industries pay different rates[^1].

Nevada has **no corporate income tax and no personal income tax**. The Commerce Tax (enacted 2015) is the primary broad-based business tax, alongside the Modified Business Tax on payroll.

[^1]: [NRS Chapter 363C — Commerce Tax](https://www.leg.state.nv.us/nrs/NRS-363C.html)

## Rate Structure

Rates vary by NAICS (North American Industry Classification System) business category. A business with activity in multiple categories uses the category generating the **highest percentage of Nevada gross revenue**[^1].

| Business Category | NAICS | Rate | Source |
|---|---|---|---|
| Mining, quarrying, oil & gas | 21 | 0.051% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Air transportation | 481 | 0.058% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Agriculture, forestry, fishing, hunting | 11 | 0.063% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Construction | 23 | 0.083% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Manufacturing | 31-33 | 0.091% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Wholesale trade | 42 | 0.101% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Finance & insurance | 52 | 0.111% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Retail trade | 44-45 | 0.111% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Warehousing & storage | 493 | 0.128% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Unclassified entities | — | 0.128% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Other transportation | 483, 485-488, 491-492 | 0.129% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Utilities & telecommunications | 22, 517 | 0.136% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Management of companies | 55 | 0.137% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Other services | 81 | 0.142% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Administrative support | 561 | 0.154% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Professional & technical services | 54 | 0.181% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Health care & social assistance | 62 | 0.190% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Food services & drinking places | 722 | 0.194% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Accommodation | 721 | 0.200% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Truck transportation | 484 | 0.202% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Arts, entertainment, recreation | 71 | 0.240% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Real estate & rental/leasing | 53 | 0.250% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Publishing, software, data processing | 511-512, 515, 518 | 0.253% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Waste management & remediation | 562 | 0.261% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Educational services | 61 | 0.281% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Rail transportation | 482 | 0.331% | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |

## Surcharge

Nevada does not impose an additional surcharge on the Commerce Tax.

## Credits and Exemptions

### Commerce Tax Credit

Businesses may claim a **Commerce Tax Credit against the Modified Business Tax (MBT)** if they meet qualifying criteria. This allows Commerce Tax paid to offset MBT liability[^1].

### Exempt Entities

| Entity Type | Source |
|---|---|
| Entities the state cannot tax under US/Nevada constitutions | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Natural persons (unless filing Schedule C, E, or F) | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Governmental entities | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| 501(c) tax-exempt organizations | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Credit unions | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Passive entities (per NRS 363C.093) | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| REITs and qualified subsidiaries | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Gold/silver mining entities | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Exhibition/trade show participants | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |

### Deductions from Gross Revenue

Allowable deductions before computing tax[^1]:
- Dividends and interest on government bonds
- Pass-through revenue
- Securities tax basis
- Bad debts, returns, and refunds
- Specified health care and insurance payments

## Filing Requirements

### Threshold and Fiscal Year

| Item | Detail | Source |
|---|---|---|
| Threshold | $4,000,000 Nevada gross revenue | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Fiscal year | July 1 – June 30 | [NRS 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html) |
| Filing due date | 45 days after fiscal year end (August 14 for June 30 year-end) | [NV Dept of Taxation](https://tax.nv.gov/tax-types/commerce-tax/) |
| Extension | Up to 30 days upon application | [NV Dept of Taxation](https://tax.nv.gov/tax-types/commerce-tax/) |

No filing required if Nevada gross revenue is $4M or less.

### Filing Method

File online at [My Nevada Tax (mynvtax.nv.gov)](https://mynvtax.nv.gov) or by mail to the Nevada Department of Taxation[^2].

[^2]: [Nevada Department of Taxation — Commerce Tax](https://tax.nv.gov/tax-types/commerce-tax/)

## Nexus

Nevada uses the standard constitutional nexus test. The Department of Taxation provides a **Nexus Questionnaire** for businesses to determine if they have sufficient presence in Nevada[^2].

The Commerce Tax applies to gross revenue from business conducted in Nevada, sitused based on[^1]:
- **Real property**: located in Nevada
- **Tangible goods**: delivered/shipped to Nevada buyer
- **Services**: proportion of benefit received in Nevada (purchaser's physical location is paramount)

## City/Local Tax Overlays

Nevada cities do not impose separate city-level commerce taxes or gross receipts taxes. The Commerce Tax is a state-level tax only. Las Vegas, Henderson, and Reno do not have additional business gross revenue taxes.

## Calculation Process

### Step 1: Determine Nevada Gross Revenue
Sum all gross revenue from business activity in Nevada for the July 1 – June 30 fiscal year.

### Step 2: Check Threshold
- At or below $4M: No tax, no filing required.
- Over $4M: Proceed to Step 3.

### Step 3: Determine NAICS Category
Identify your primary business category by NAICS code. If operating in multiple categories, use the one generating the highest percentage of Nevada gross revenue.

### Step 4: Apply Deductions
Subtract allowable deductions (government bond interest, pass-through revenue, bad debts, etc.).

### Step 5: Compute Commerce Tax
```
commerce_tax = rate × max(nevada_gross_revenue - $4,000,000, 0)
```

## Example: Las Vegas Software Company

```
Nevada gross revenue (Jul 2025 – Jun 2026): $6,500,000
NAICS category: Publishing, software, data processing (511)
Rate: 0.253%
No allowable deductions

Commerce Tax = 0.00253 × ($6,500,000 - $4,000,000)
             = 0.00253 × $2,500,000
             = $6,325.00

Due date: August 14, 2026
Filing: My Nevada Tax (mynvtax.nv.gov)
```

## Common Mistakes

1. **Wrong fiscal year** — Nevada's Commerce Tax uses July 1 – June 30, not the calendar year[^1]
2. **Wrong NAICS category** — Businesses in multiple categories must use the one generating the highest NV gross revenue, not the one with the lowest rate[^1]
3. **Missing the $4M threshold** — Only revenue above $4M is taxed, but the threshold applies to total NV gross revenue, not per-entity[^1]
4. **Confusing with Modified Business Tax** — The MBT is a separate payroll tax. The Commerce Tax credit can offset MBT, not the other way around
5. **Not filing because "no income tax"** — Nevada has no income tax, but the Commerce Tax still applies to businesses over $4M
6. **Calendar year filing** — The due date is August 14 (45 days after June 30), not April 15

## References

### Official Nevada Department of Taxation
- [Commerce Tax Overview](https://tax.nv.gov/tax-types/commerce-tax/)
- [My Nevada Tax Portal](https://mynvtax.nv.gov)
- [Commerce Tax Return Instructions](https://tax.nv.gov/wp-content/uploads/2024/05/Commerce-Tax-Return-Instructions-6-2023.pdf)

### Nevada Revised Statutes
- [NRS Chapter 363C — Commerce Tax](https://www.leg.state.nv.us/nrs/NRS-363C.html)

### Analysis
- [Tax Foundation — Nevada Commerce Tax](https://taxfoundation.org/research/all/state/nevada-approves-commerce-tax-new-tax-business-gross-receipts/)

## Output Format

When computing Commerce Tax, present results as:

```markdown
## Nevada Commerce Tax — [Fiscal Year]

| Item | Amount |
|---|---|
| Nevada Gross Revenue | $X,XXX,XXX.XX |
| Revenue Threshold | ($4,000,000.00) |
| Taxable Revenue | $X,XXX,XXX.XX |
| NAICS Category | [Category Name] (NAICS XX) |
| Rate | X.XXX% |
| **Commerce Tax Due** | **$XX,XXX.XX** |
| Due Date | August 14, [Year] |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST identify the correct NAICS category based on highest NV revenue percentage
- MUST use July 1 – June 30 fiscal year, not calendar year
- MUST warn if gross revenue approaches the $4M threshold within 10%
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST note the August 14 due date (not April 15)
- MUST cite sources when presenting rates or thresholds to the user

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
