---
name: oh-cat
description: Ohio Commercial Activity Tax (CAT) calculator for businesses. Computes 0.26% tax on gross receipts over $6M, quarterly filing, and bright-line nexus. Triggers on Ohio CAT, Ohio business tax, commercial activity tax, Ohio gross receipts.
last_verified: 2026-04-11
---

# Ohio Commercial Activity Tax (CAT) Calculator

> Compute Ohio CAT liability for businesses with Ohio-sourced gross receipts. Handles the $6M exclusion threshold, 0.26% flat rate, quarterly filing, and bright-line nexus rules per Ohio Department of Taxation.

## When to Activate

- User mentions "Ohio CAT", "commercial activity tax", "Ohio business tax", "Ohio gross receipts"
- Computing quarterly or annual CAT liability
- Determining if a business must register for the CAT
- Evaluating Ohio nexus for an out-of-state business
- Any business with gross receipts sourced to Ohio

## What This Tax Is

Ohio's Commercial Activity Tax (CAT) is a **gross receipts tax** — a privilege tax measured by gross receipts from business activity in Ohio. Unlike income taxes, the CAT does not allow deductions for expenses, costs of goods sold, or other business costs[^1].

The CAT applies to **all business entity types** — sole proprietors, partnerships, LLCs, corporations, and S-corps. It is separate from Ohio's corporate franchise tax (which it replaced in 2005) and municipal income taxes. Financial institutions and insurance companies are generally exempt[^1].

As of 2025, the exclusion threshold increased to **$6 million**, meaning approximately 90% of Ohio businesses no longer owe the CAT[^2].

[^1]: [Ohio Department of Taxation — Commercial Activity Tax](https://tax.ohio.gov/business/ohio-business-taxes/commercial-activity-tax)
[^2]: [Brady Ware — 2025 Ohio CAT Updates](https://bradyware.com/ohio-commercial-activity-tax-cat-update/)

## Rate Structure

The CAT has a single flat rate with no tiers or classifications:

| Component | Amount | Source |
|---|---|---|
| Exclusion threshold | $6,000,000 (effective 2025) | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |
| Tax rate | 0.26% on gross receipts over $6M | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |

**Formula:**
```
CAT = 0.0026 × max(ohio_taxable_gross_receipts - $6,000,000, 0)
```

No base tax amount. No tiered rates. No classification-based rates. The Annual Minimum Tax (AMT) was eliminated as part of the 2024 threshold changes[^2].

### Threshold History

| Year | Exclusion Threshold | Source |
|---|---|---|
| Through 2023 | $150,000 | [RubinBrown — CAT Changes](https://www.rubinbrown.com/insights-events/insight-articles/2025-changes-to-ohio-commercial-activity/) |
| 2024 | $3,000,000 | [RubinBrown — CAT Changes](https://www.rubinbrown.com/insights-events/insight-articles/2025-changes-to-ohio-commercial-activity/) |
| 2025+ | $6,000,000 | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |

## Surcharge

Ohio does not impose an additional surcharge on the CAT for high-grossing businesses.

## Credits and Exemptions

### Exempt Entities

| Entity Type | Source |
|---|---|
| Financial institutions (subject to separate financial institutions tax) | [Ohio DOR — CAT](https://tax.ohio.gov/business/ohio-business-taxes/commercial-activity-tax) |
| Insurance companies (subject to separate insurance premium tax) | [Ohio DOR — CAT](https://tax.ohio.gov/business/ohio-business-taxes/commercial-activity-tax) |
| Certain qualifying dealers in intangibles | [Ohio DOR — CAT](https://tax.ohio.gov/business/ohio-business-taxes/commercial-activity-tax) |

### Ownership Aggregation Rule

Individuals holding over **50% ownership** in multiple businesses must combine gross receipts across all owned entities to determine whether the $6M threshold is met[^2]. This prevents splitting a business into smaller entities to avoid the CAT.

### No Cost Subtraction

Unlike Oregon's CAT, Ohio's CAT offers **no subtraction for costs, expenses, or labor**. The tax is computed on gross receipts without any deductions[^1].

## Filing Requirements

### Registration Threshold

Businesses with more than $6 million in Ohio taxable gross receipts must register for the CAT. Businesses at or below $6 million may cancel their CAT account[^2].

### Filing Frequency and Due Dates

The CAT is filed **quarterly** for businesses above the threshold:

| Quarter | Period | Due Date | Source |
|---|---|---|---|
| Q1 | Jan 1 – Mar 31 | May 10 | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |
| Q2 | Apr 1 – Jun 30 | August 10 | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |
| Q3 | Jul 1 – Sep 30 | November 10 | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |
| Q4 | Oct 1 – Dec 31 | February 10 | [Brady Ware — CAT Update](https://bradyware.com/ohio-commercial-activity-tax-cat-update/) |

Due on the **10th day of the second month** following the end of each calendar quarter.

### Situsing Rules

Gross receipts are sourced ("sitused") to Ohio based on where the benefit of the service or product is received, not where the business is located. Ohio uses an **ultimate destination** rule for tangible goods and a **benefit received** rule for services[^3].

[^3]: [Taft Law — Ultimate Destination Rule](https://www.taftlaw.com/news-events/law-bulletins/the-ultimate-destination-rule-keeping-ohios-cat-in-check/)

## Nexus

Ohio uses a **bright-line economic nexus** standard — the first state to adopt one (2005). A business has CAT nexus if **any** of the following apply during the calendar year[^4]:

| Nexus Trigger | Threshold | Source |
|---|---|---|
| Ohio taxable gross receipts | $500,000 | [ORC 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) |
| Ohio property | $50,000 | [ORC 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) |
| Ohio payroll | $50,000 | [ORC 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) |
| 25% of total property, payroll, or receipts in Ohio | Any amount | [ORC 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) |
| Authorized to do business in Ohio | — | [ORC 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) |
| Owns or uses capital in Ohio | — | [ORC 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) |

**Note:** Having nexus does not mean you owe tax — you must also exceed the $6M gross receipts threshold. Many businesses have nexus but fall below the threshold[^4].

[^4]: [Ohio Revised Code § 5751.01](https://codes.ohio.gov/ohio-revised-code/section-5751.01) and [Plante Moran — CAT Bright-Line Nexus](https://www.plantemoran.com/explore-our-thinking/insight/2016/11/ohio-commercial-activity-tax-brightline-nexus-standard-upheld)

## City/Local Tax Overlays

Ohio cities impose **municipal income taxes** on business net profits — these are net income taxes, not gross receipts taxes, and are separate from the CAT.

Major Ohio cities with business income taxes:

| City | Rate | Tax Type | Source |
|---|---|---|---|
| Columbus | 2.50% | Net profit | [Columbus Income Tax](https://www.columbus.gov/Government/City-Auditor/Income-Tax-Division/General-Income-Tax-Information) |
| Cleveland | 2.50% | Net profit | [CCA Tax Rates](https://www.ccaohio.gov/tax-rates) |
| Cincinnati | 1.80% | Net profit | [Cincinnati Finance](https://www.cincinnati-oh.gov/finance/income-taxes/) |

See `references/city-taxes.md` for full details on rates, filing requirements, and administration.

## Calculation Process

### Step 1: Determine Ohio Taxable Gross Receipts
Sum all gross receipts sourced to Ohio using situsing rules (ultimate destination for goods, benefit received for services).

### Step 2: Check Threshold
- At or below $6M: No tax due. Consider canceling CAT account.
- Over $6M: Proceed to Step 3.

### Step 3: Compute CAT
```
cat = 0.0026 × (ohio_gross_receipts - $6,000,000)
```

### Step 4: Quarterly Payments
Divide annual estimated liability by 4 for quarterly payments.

### Step 5: Check for Municipal Income Taxes
If operating in an Ohio city with a municipal income tax, compute city net profit tax separately.

## Example: Ohio Manufacturing Company

```
Annual Ohio taxable gross receipts: $15,000,000

Step 1: Ohio gross receipts = $15,000,000

Step 2: Over $6M → tax applies

Step 3: CAT = 0.0026 × ($15,000,000 - $6,000,000)
        CAT = 0.0026 × $9,000,000
        CAT = $23,400.00

Step 4: Quarterly payment = $23,400 / 4 = $5,850.00

Annual CAT liability: $23,400.00
```

## Common Mistakes

1. **Not aggregating ownership** — Individuals with 50%+ ownership in multiple businesses must combine receipts to determine if the $6M threshold is met[^2]
2. **Deducting expenses** — Ohio's CAT is on gross receipts with no deductions for COGS, labor, or other costs (unlike Oregon's CAT)[^1]
3. **Confusing CAT with municipal income tax** — The CAT is a state-level gross receipts tax; municipal taxes are separate net income taxes on business profits
4. **Missing the nexus triggers** — Nexus exists at $500K in Ohio receipts, but tax isn't due until $6M. Registration and filing obligations can differ[^4]
5. **Wrong situsing** — Receipts are sourced to where the benefit is received, not where the seller is located[^3]
6. **Not canceling unused accounts** — Businesses that drop below $6M should cancel their CAT account to avoid unnecessary filing obligations[^2]
7. **Missing quarterly due dates** — Due on the 10th of the second month after quarter-end (not end of month like many other states)

## References

### Official Ohio Department of Taxation
- [Commercial Activity Tax Overview](https://tax.ohio.gov/business/ohio-business-taxes/commercial-activity-tax)
- [Ohio Gateway — CAT Filing](https://gateway.ohio.gov/)

### Ohio Revised Code
- [ORC § 5751.01 — CAT Definitions and Nexus](https://codes.ohio.gov/ohio-revised-code/section-5751.01)
- [ORC Chapter 5751 — Commercial Activity Tax](https://codes.ohio.gov/ohio-revised-code/chapter-5751)

### Analysis
- [Brady Ware — 2025 Ohio CAT Updates](https://bradyware.com/ohio-commercial-activity-tax-cat-update/)
- [RubinBrown — 2025 Changes to Ohio CAT](https://www.rubinbrown.com/insights-events/insight-articles/2025-changes-to-ohio-commercial-activity/)
- [Taft Law — Ultimate Destination Rule](https://www.taftlaw.com/news-events/law-bulletins/the-ultimate-destination-rule-keeping-ohios-cat-in-check/)

### City Taxes
- [Columbus Income Tax Division](https://www.columbus.gov/Government/City-Auditor/Income-Tax-Division)
- [Cleveland CCA Tax Rates](https://www.ccaohio.gov/tax-rates)
- [Cincinnati Finance — Income Taxes](https://www.cincinnati-oh.gov/finance/income-taxes/)

## Output Format

When computing CAT, present results as:

```markdown
## Ohio CAT — [Period]

| Item | Amount |
|---|---|
| Ohio Taxable Gross Receipts | $XX,XXX,XXX.XX |
| Exclusion Threshold | ($6,000,000.00) |
| Taxable Amount | $XX,XXX,XXX.XX |
| Rate | 0.26% |
| **Total CAT Due** | **$XX,XXX.XX** |
| Quarterly Payment | $X,XXX.XX |
| Due Date | [date] |

*Municipal income taxes (if applicable):*
| City | Rate | Net Profit | Tax Due |
|---|---|---|---|
| [City] | X.XX% | $XX,XXX | $X,XXX |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST NOT suggest deducting expenses from CAT gross receipts
- MUST check ownership aggregation rules for multi-entity owners
- MUST apply situsing rules (ultimate destination / benefit received) when determining Ohio receipts
- MUST check for municipal income tax obligations in addition to state CAT
- MUST warn if gross receipts approach the $6M threshold within 10%
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST note that quarterly due dates are the 10th of the second month after quarter-end
- MUST cite sources when presenting rates or thresholds to the user

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
