---
name: wa-bno-tax
description: Washington State Business & Occupation (B&O) tax calculator for self-employed and small businesses. Computes tiered rates, small business credit, quarterly estimates, and filing deadlines. Triggers on WA B&O, Washington business tax, gross receipts tax, DOR filing.
last_verified: 2026-04-11
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

Washington's B&O tax is a **gross receipts tax** — it applies to total revenue, not profit. There are **no deductions for expenses, labor, materials, taxes, or other costs of doing business**[^1]. This makes it fundamentally different from federal income tax. A business that grosses $150K but nets $50K pays B&O on the full $150K.

[^1]: [WA DOR — Business & Occupation Tax Overview](https://dor.wa.gov/taxes-rates/business-occupation-tax)

## Rate Structure — Service & Other Activities (Effective Oct 1, 2025)

Most self-employed professionals (software engineers, consultants, freelancers) fall under **Service & Other Activities**. Rates are tiered based on the prior calendar year's gross income for the taxpayer or their affiliated group[^2].

| Prior Year Gross Income | Rate | Source |
|---|---|---|
| Under $1,000,000 | 1.50% | [DOR Rate Changes](https://dor.wa.gov/forms-publications/publications-subject/special-notices/service-and-other-activities-rate-changes) |
| $1,000,000 – $4,999,999 | 1.75% | [DOR Rate Changes](https://dor.wa.gov/forms-publications/publications-subject/special-notices/service-and-other-activities-rate-changes) |
| $5,000,000+ | 2.10% | [DOR Rate Changes](https://dor.wa.gov/forms-publications/publications-subject/special-notices/service-and-other-activities-rate-changes) |

**Exceptions:** Hospitals and select advanced computing businesses continue paying the flat 1.5% rate regardless of income level[^2].

[^2]: [DOR Special Notice — Service and Other Activities Rate Changes](https://dor.wa.gov/forms-publications/publications-subject/special-notices/service-and-other-activities-rate-changes) (citing ESHB 2081, Chapter 240, Laws of 2025, Sec 109)

### Other Common Classifications

| Classification | Rate | Source |
|---|---|---|
| Retailing | 0.471% | [DOR B&O Classifications](https://dor.wa.gov/taxes-rates/business-occupation-tax/business-occupation-tax-classifications) |
| Wholesaling | 0.484% | [DOR B&O Classifications](https://dor.wa.gov/taxes-rates/business-occupation-tax/business-occupation-tax-classifications) |
| Manufacturing | 0.484% | [DOR B&O Classifications](https://dor.wa.gov/taxes-rates/business-occupation-tax/business-occupation-tax-classifications) |
| Child Care | 0.484% | [DOR B&O Classifications](https://dor.wa.gov/taxes-rates/business-occupation-tax/business-occupation-tax-classifications) |

The full list of 50+ classifications is available at the [DOR B&O Tax Classifications page](https://dor.wa.gov/taxes-rates/business-occupation-tax/business-occupation-tax-classifications).

### Activity Classification Examples

**Service & Other Activities:** Software engineers, consultants, freelance writers, graphic designers, accountants, attorneys, architects, property managers, marketing agencies, SaaS companies[^3].

**Retailing:** Selling tangible goods to consumers, restaurants, retail stores, e-commerce selling physical products, custom software sold as a product[^3].

**Wholesaling:** Selling goods to other businesses for resale, distribution companies, B2B product sales[^3].

**Manufacturing:** Producing goods from raw materials, food production, printing, fabrication, assembly[^3].

**If income spans multiple classifications**, report each portion under its own classification. The Multiple Activities Tax Credit (MATC) prevents double-taxation when income is taxable under more than one classification — for example, a business that both manufactures and sells at retail. The MATC allows you to claim a credit against the manufacturing B&O tax for the portion also subject to retailing B&O tax[^4].

WHEN a business activity does not clearly fit a single classification, consult the [DOR Classification Definitions](https://dor.wa.gov/open-business/apply-business-license/plan-taxes/business-and-occupation-bo-tax-classification-definitions) or the [Common Business Activities guide](https://dor.wa.gov/file-pay-taxes/before-i-file/tax-classifications-common-business-activities).

[^3]: [DOR — B&O Tax Classification Definitions](https://dor.wa.gov/open-business/apply-business-license/plan-taxes/business-and-occupation-bo-tax-classification-definitions)
[^4]: [DOR — Tax Incentives: Credits](https://dor.wa.gov/taxes-rates/tax-incentives/credits)

## Surcharge — High-Grossing Businesses (Effective Jan 1, 2026)

An additional B&O surcharge applies to businesses with at least $250 million in Washington taxable income[^5].

| Item | Detail | Source |
|---|---|---|
| Threshold | $250,000,000 in WA taxable income | [ESHB 2081](https://app.leg.wa.gov/BillSummary/?BillNumber=2081&Year=2025&Initiative=false) |
| Rate | 0.5% on income exceeding $250M | [ESHB 2081](https://app.leg.wa.gov/BillSummary/?BillNumber=2081&Year=2025&Initiative=false) |
| Effective period | January 1, 2026 – December 31, 2030 | [ESHB 2081](https://app.leg.wa.gov/BillSummary/?BillNumber=2081&Year=2025&Initiative=false) |
| Exemptions | Manufacturing, food/prescription drug sales, timber, petroleum | [AWB — HB 2081 Summary](https://www.awb.org/what-you-need-to-know-about-hb-2081-a-major-bo-tax-overhaul/) |

Select advanced computing firms pay a 7.5% B&O surcharge with an annual cap of $75 million, effective January 1, 2026[^5].

[^5]: [Association of Washington Business — HB 2081 Summary](https://www.awb.org/what-you-need-to-know-about-hb-2081-a-major-bo-tax-overhaul/) and [ESHB 2081 Bill Summary](https://app.leg.wa.gov/BillSummary/?BillNumber=2081&Year=2025&Initiative=false)

## Small Business B&O Tax Credit

The credit **can reduce or eliminate** B&O tax for small businesses[^6].

### Service & Other Activities Credit

| Filing Frequency | Credit Amount | Source |
|---|---|---|
| Monthly | $160 | [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) |
| Quarterly | $480 | [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) |
| Annual | $1,920 | [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) |

Eligibility: Must report ≥50% of total B&O taxable amount under Service & Other Activities, Real Estate Brokers, or Contests of Chance[^6].

Non-service businesses: $55/month ($165/quarter, $660/year)[^6].

[^6]: [DOR — Small Business Tax Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) and [WAC 458-20-104](https://apps.leg.wa.gov/WAC/default.aspx?cite=458-20-104)

### Phase-Out (Quarterly Filing)

| Quarterly Gross | Credit | Effective Tax |
|---|---|---|
| Under $28,000 | Full ($480) | $0 |
| $28,000 – $56,000 | Partial (linear phase-out) | Reduced |
| Over $56,000 | $0 | Full rate |

> Source: [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables)

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

| Annual Gross | Credit | Source |
|---|---|---|
| Under $112,000 | Full ($1,920) | [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) |
| $112,000 – $224,000 | Partial (linear phase-out) | [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) |
| Over $224,000 | $0 | [DOR Small Business Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables) |

### Future Changes (Effective January 1, 2029)

Small business credit doubles: Service $160→$320/month, Non-service $55→$110/month[^7]. This effectively exempts the first $250K of income for non-service businesses.

[^7]: [2025 Tax Legislation Summary](https://dor.wa.gov/forms-publications/publications-subject/tax-topics/2025-tax-legislation)

## Filing Requirements

### Who Must File

Any business with gross receipts from Washington activities, unless annual gross is under $250,000 AND no other taxes/fees are owed to DOR[^8].

[^8]: [DOR — Annual Business Filers](https://dor.wa.gov/file-pay-taxes/filing-frequencies-due-dates/annual-business-filers)

### Filing Frequency

| Annual Gross | Frequency | Source |
|---|---|---|
| Under $250,000 | Annual (due April 15) | [DOR — Annual Business Filers](https://dor.wa.gov/file-pay-taxes/filing-frequencies-due-dates/annual-business-filers) |
| $250,000 – varies | Quarterly (due end of month after quarter) | [DOR — B&O Tax Overview](https://dor.wa.gov/taxes-rates/business-occupation-tax) |
| High volume | Monthly (due 25th of following month) | [DOR — B&O Tax Overview](https://dor.wa.gov/taxes-rates/business-occupation-tax) |

### Quarterly Due Dates

| Quarter | Period | Due Date |
|---|---|---|
| Q1 | Jan 1 – Mar 31 | April 30 |
| Q2 | Apr 1 – Jun 30 | July 31 |
| Q3 | Jul 1 – Sep 30 | October 31 |
| Q4 | Oct 1 – Dec 31 | January 31 |

> Source: [DOR — B&O Tax Overview](https://dor.wa.gov/taxes-rates/business-occupation-tax)

Filing is via the [WA DOR excise tax return](https://dor.wa.gov/file-pay-taxes), not IRS.

## Nexus — Do You Owe WA B&O Tax?

A business has nexus in Washington and must register for B&O tax if **any** of the following apply[^9]:

1. **Physical presence** — office, warehouse, employees, or inventory in Washington
2. **Economic nexus** — more than $100,000 in combined gross receipts sourced or attributed to Washington in the current or prior calendar year
3. **Domicile** — organized or commercially domiciled in Washington

The economic nexus threshold applies to all Washington income including retailing, wholesaling, service, and apportionable activities[^9].

**Remote businesses:** If your business operates outside Washington but has customers in Washington generating more than $100,000 in gross receipts, you have economic nexus and must register for B&O tax[^9].

Nexus determination can be complex, especially for businesses with mixed in-state and out-of-state activities. For edge cases, consult [WA DOR](https://dor.wa.gov/education/industry-guides/out-state-businesses-reporting-thresholds-and-nexus) or a tax professional.

[^9]: [DOR — Out of State Businesses: Reporting Thresholds and Nexus](https://dor.wa.gov/education/industry-guides/out-state-businesses-reporting-thresholds-and-nexus) (RCW 82.04.067; WAC 458-20-193; WAC 458-20-194)

## City/Local B&O Tax Overlays

Some Washington cities impose their own B&O tax **on top of** state B&O. City B&O is filed and paid separately from state B&O — the city has its own return, rates, and thresholds.

Major cities with B&O taxes include Seattle, Tacoma, Bellevue, and Everett. See `references/city-bno.md` for full details on rates, thresholds, and filing URLs by city.

If the business operates from a city with B&O, compute **both** state and city liability and present them separately.

## Calculation Process

### Step 1: Determine Classification
Most self-employed professionals → **Service & Other Activities**. See classification examples above.

### Step 2: Determine Rate Tier
Check prior year gross income against thresholds ($1M, $5M) for the taxpayer or affiliated group.

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

### Step 6: Check for City B&O
If operating in a city with B&O, compute city tax separately.

## Example: Self-Employed Software Engineer

```
Annual gross receipts: $134,400 ($11,200/month)
Classification: Service & Other Activities
Rate tier: Under $1M → 1.5%
Filing: Quarterly (gross > $250K threshold for annual — wait, $134K < $250K, so annual eligible)

Using quarterly filing for illustration:

Q1 gross: $33,600
Gross tax: $33,600 × 0.015 = $504.00
Credit ratio: ($33,600 - $28,000) / $28,000 = 0.200
Credit: $480 × (1 - 0.200) = $384.00
Net Q1 tax: $504.00 - $384.00 = $120.00

Annual estimate: ~$480 in B&O tax (after credits)
```

## Common Mistakes

1. **Deducting expenses** — B&O is on gross receipts, not net income[^1]
2. **Missing the credit** — Many small businesses qualify for the small business credit but don't claim it[^6]
3. **Wrong classification** — Software consulting is Service, not Retailing[^3]
4. **Ignoring city B&O** — Seattle has its own B&O tax (separate filing via seattle.gov)
5. **Not filing because "under threshold"** — The $250K annual filing exemption only applies if you owe NO other taxes to DOR[^8]
6. **Using the wrong tier** — Service rates are based on the prior calendar year, not current year, and include the affiliated group's income[^2]
7. **Applying federal deductions** — B&O has no deductions. Home office, vehicle, equipment — none of these reduce your B&O gross receipts[^1]

## References

### Official DOR Pages
- [B&O Tax Overview](https://dor.wa.gov/taxes-rates/business-occupation-tax)
- [B&O Tax Classifications & Rates](https://dor.wa.gov/taxes-rates/business-occupation-tax/business-occupation-tax-classifications)
- [B&O Classification Definitions](https://dor.wa.gov/open-business/apply-business-license/plan-taxes/business-and-occupation-bo-tax-classification-definitions)
- [Common Business Activities Guide](https://dor.wa.gov/file-pay-taxes/before-i-file/tax-classifications-common-business-activities)
- [Small Business Tax Credit Tables](https://dor.wa.gov/forms-publications/forms-subject/small-business-tax-credit-tables)
- [Tax Incentives: Credits (including MATC)](https://dor.wa.gov/taxes-rates/tax-incentives/credits)
- [Annual Business Filers](https://dor.wa.gov/file-pay-taxes/filing-frequencies-due-dates/annual-business-filers)
- [Out of State Businesses: Nexus](https://dor.wa.gov/education/industry-guides/out-state-businesses-reporting-thresholds-and-nexus)
- [Service & Other Activities Rate Changes (Special Notice)](https://dor.wa.gov/forms-publications/publications-subject/special-notices/service-and-other-activities-rate-changes)
- [2025 Tax Legislation Summary](https://dor.wa.gov/forms-publications/publications-subject/tax-topics/2025-tax-legislation)

### Legislation
- [ESHB 2081 — Tiered Rates, Surcharge (2025 Session)](https://app.leg.wa.gov/BillSummary/?BillNumber=2081&Year=2025&Initiative=false)
- [RCW 82.04 — Business & Occupation Tax Statute](https://apps.leg.wa.gov/RCW/default.aspx?cite=82.04)
- [RCW 82.04.067 — Nexus](https://apps.leg.wa.gov/RCW/default.aspx?cite=82.04.067)
- [WAC 458-20-104 — Small Business Tax Relief](https://apps.leg.wa.gov/WAC/default.aspx?cite=458-20-104)
- [WAC 458-20-193 — Nexus (Economic)](https://apps.leg.wa.gov/WAC/default.aspx?cite=458-20-193)

### Secondary Sources
- [Association of Washington Business — HB 2081 Summary](https://www.awb.org/what-you-need-to-know-about-hb-2081-a-major-bo-tax-overhaul/)

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

*City B&O (if applicable):*
| City | Rate | Tax Due |
|---|---|---|
| [City] | X.XXX% | $XXX.XX |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST NOT suggest deducting expenses from B&O gross receipts
- MUST check for city B&O liability in addition to state
- MUST warn if gross receipts are within 10% of a tier threshold ($1M, $5M)
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST note that B&O is filed via WA DOR excise tax return, not IRS
- MUST cite sources when presenting rates or thresholds to the user

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
