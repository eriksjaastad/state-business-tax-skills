---
name: tn-business-tax
description: Tennessee Business Tax calculator for businesses. Computes state and city gross receipts tax by classification (1-5) with retailer/wholesaler distinction, per-jurisdiction filing, and $100K threshold. Triggers on Tennessee business tax, TN gross receipts, Tennessee commercial tax.
last_verified: 2026-04-11
---

# Tennessee Business Tax Calculator

> Compute Tennessee Business Tax liability by classification and jurisdiction. Handles 5 classifications with retailer/wholesaler rate splits, per-location filing, $100K registration threshold, and state + city tax layers per TN DOR rules.

## When to Activate

- User mentions "Tennessee business tax", "TN gross receipts", "Tennessee commercial tax"
- Computing business tax for a Tennessee location
- Determining classification for a Tennessee business
- Evaluating per-jurisdiction filing obligations
- Any business with taxable sales in Tennessee

## What This Tax Is

Tennessee's Business Tax is a **gross receipts tax** on the privilege of doing business in Tennessee. It is levied on gross sales or receipts from business activity, not on net income or profit[^1].

The tax is actually **two separate taxes**: a **state business tax** and a **city/county business tax**. Both use the same classification system and rate structure, and cities may impose rates up to the state maximum. Businesses must file separately for each jurisdiction where they have a taxable location[^1].

Tennessee has **no state income tax on wages or business income** — the business tax is the primary state-level business levy beyond franchise & excise taxes (which apply to corporations and LLCs).

[^1]: [Tennessee DOR — Business Tax](https://www.tn.gov/revenue/taxes/business-tax.html)

## Rate Structure

Rates depend on two factors: your **classification** (1-5, based on dominant business activity) and whether you are a **retailer or wholesaler** (more than half of taxable gross sales determines which).

| Classification | Retailer Rate | Wholesaler Rate | Source |
|---|---|---|---|
| 1A (food/beer for home) | 0.100% | 0.025% | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 1B (building materials, hardware) | 0.100% | 0.0375% | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 1C (farm/nursery products) | 0.100% | 0.0375% | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 1D (gasoline/diesel retail) | 0.050% | — | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 1E (gasoline/diesel wholesale) | — | 0.03125% | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 2 (general merchandise) | 0.150% | 0.0375% | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 3 (services + specialty retail) | 0.1875% | 0.0375% | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 4 (contractors, livestock) | 0.100% | — | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 5A (industrial loan/thrift) | 0.100% | — | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| 5B (natural gas marketers) | 0.020% | — | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |

**Minimum tax:** $22 per taxpayer per location, per year (Classifications 1-4 and 5B). Classification 5A minimum is $450[^2].

[^2]: [TN DOR — Due Dates and Tax Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) and [TCA § 67-4-709](https://law.justia.com/codes/tennessee/title-67/chapter-4/part-7/section-67-4-709/)

## Surcharge

Tennessee does not impose an additional surcharge on the business tax for high-grossing businesses.

## Credits and Exemptions

### Exempt Services (Classification 3)

Many professional services are **exempt** from business tax and do not require a business license[^3]:

- Accounting and tax preparation
- Architecture and engineering
- Banking and financial services
- Legal services
- Medical, dental, and veterinary services
- Insurance services
- Public utilities
- Charitable, educational, and religious activities

[^3]: [TN DOR — Classifications](https://www.tn.gov/revenue/taxes/business-tax/classifications.html)

### $100,000 Filing Threshold

Businesses with less than $100,000 in gross receipts **per jurisdiction** are not required to register or file[^1]. This threshold was raised from $10,000 by the Tennessee Works Tax Act.

## Filing Requirements

### Registration Threshold

| Threshold | Amount | Obligation | Source |
|---|---|---|---|
| Per-jurisdiction gross receipts | $100,000+ | Must register and file | [TN DOR — Business Tax](https://www.tn.gov/revenue/taxes/business-tax.html) |
| Below threshold | <$100,000 per jurisdiction | No registration or filing required | [TN DOR — Business Tax](https://www.tn.gov/revenue/taxes/business-tax.html) |

### Per-Jurisdiction Filing

Businesses must file a **separate return for each jurisdiction** (city/county) where they have a taxable location. A business is deemed to have a location in a jurisdiction if it receives more than $50,000 in compensation from contracts there during the taxable period[^4].

Only **one classification** is allowed per business location.

[^4]: [TCA § 67-4-709](https://law.justia.com/codes/tennessee/title-67/chapter-4/part-7/section-67-4-709/) and [CTAS — Business Tax](https://www.ctas.tennessee.edu/eli/business-tax)

### Filing Frequency and Due Dates

| Filing Type | Due Date | Source |
|---|---|---|
| Annual return | April 15 (15th of 4th month after fiscal year end) | [TN DOR Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html) |
| Final return (closure) | Within 15 days of business closure | [TN DOR — Business Tax](https://www.tn.gov/revenue/taxes/business-tax.html) |

## Nexus

Tennessee uses a **bright-line nexus** standard for business tax. A business has substantial nexus if **any** of the following apply[^5]:

| Nexus Trigger | Threshold | Source |
|---|---|---|
| Tennessee receipts | >$500,000 OR >25% of total receipts | [TN DOR Nexus Webinar](https://www.tn.gov/content/dam/tn/revenue/documents/taxpayer_education/misc/nexuswebinar2022.pdf) |
| Tennessee property | >$50,000 OR >25% of total property | [TN DOR Nexus Webinar](https://www.tn.gov/content/dam/tn/revenue/documents/taxpayer_education/misc/nexuswebinar2022.pdf) |
| Tennessee payroll | >$50,000 OR >25% of total payroll | [TN DOR Nexus Webinar](https://www.tn.gov/content/dam/tn/revenue/documents/taxpayer_education/misc/nexuswebinar2022.pdf) |

Out-of-state businesses must pay business tax if they have substantial nexus **and** deliver services, lease items, ship goods, or operate as natural gas marketers to Tennessee customers[^1].

[^5]: [TN DOR — Nexus Webinar 2022](https://www.tn.gov/content/dam/tn/revenue/documents/taxpayer_education/misc/nexuswebinar2022.pdf)

## City/Local Tax Overlays

Tennessee's business tax is inherently **two taxes**: state and city/county. Cities may impose business tax up to the state maximum rates using the same classification system. Both taxes are filed through the Tennessee DOR system.

Major Tennessee cities all participate in the business tax system — there is no separate city business tax to track beyond the state-administered framework. The [City and County Business Tax Dashboard](https://www.tn.gov/revenue/taxes/business-tax.html) on the TN DOR website shows which jurisdictions have active business taxes.

| City | Business Tax | Notes |
|---|---|---|
| Nashville / Davidson County | State + city rates | Filed per jurisdiction via TN DOR |
| Memphis / Shelby County | State + city rates | Filed per jurisdiction via TN DOR |
| Knoxville / Knox County | State + city rates | Filed per jurisdiction via TN DOR |

## Calculation Process

### Step 1: Determine Classification
Identify which classification (1-5) matches your dominant business activity. Only one classification per location.

### Step 2: Determine Retailer vs. Wholesaler
If more than half of taxable gross sales are retail → retailer rate. If more than half are wholesale → wholesaler rate. Classifications 4, 5A, 5B use a single rate.

### Step 3: Compute Gross Tax Per Jurisdiction
```
tax = gross_receipts_in_jurisdiction × rate
tax = max(tax, $22)  # Minimum tax ($450 for Class 5A)
```

### Step 4: Sum State + City Tax
Both state and city rates apply. Total tax per jurisdiction = state tax + city tax.

### Step 5: Repeat for Each Jurisdiction
File a separate return for each jurisdiction where you have a taxable location.

## Example: Nashville Service Business (Classification 3)

```
Annual gross receipts in Nashville: $250,000
Classification: 3 (services + specialty retail)
Retailer/Wholesaler: Retailer (>50% retail sales)
Rate: 0.1875%

State business tax: $250,000 × 0.001875 = $468.75
City business tax: $250,000 × 0.001875 = $468.75 (assuming city at max rate)
Total: $468.75 + $468.75 = $937.50

Minimum check: $937.50 > $22 ✓
Due date: April 15
```

## Common Mistakes

1. **Wrong classification** — Your classification is based on your *dominant* activity (largest portion of taxable sales), not all activities[^3]
2. **Missing per-jurisdiction filing** — If you have locations or significant contracts ($50K+) in multiple cities/counties, you must file separately for each[^4]
3. **Confusing business tax with sales tax** — Business tax is on gross receipts; sales tax is collected from customers. They are separate obligations
4. **Forgetting the minimum tax** — Even if your calculated tax is under $22, you owe at least $22 per location ($450 for Class 5A)[^2]
5. **Not checking exempt services** — Many professional services (legal, medical, accounting, etc.) are exempt from business tax entirely[^3]
6. **Applying the wrong rate type** — Retailer and wholesaler rates differ significantly. Check whether >50% of your sales are retail or wholesale[^2]
7. **Ignoring the $100K threshold per jurisdiction** — The threshold applies per jurisdiction, not total. You could owe in Nashville but not in a smaller town

## References

### Official Tennessee Department of Revenue
- [Business Tax Overview](https://www.tn.gov/revenue/taxes/business-tax.html)
- [Due Dates and Tax Rates](https://www.tn.gov/revenue/taxes/business-tax/due-dates-and-tax-rates.html)
- [Classifications](https://www.tn.gov/revenue/taxes/business-tax/classifications.html)
- [Business Tax Manual (December 2025)](https://www.tn.gov/content/dam/tn/revenue/documents/tax_manuals/december-2025/Business-Tax-Manual.pdf)
- [Nexus Webinar (2022)](https://www.tn.gov/content/dam/tn/revenue/documents/taxpayer_education/misc/nexuswebinar2022.pdf)

### Tennessee Code Annotated
- [TCA § 67-4-709 — Tax Rates](https://law.justia.com/codes/tennessee/title-67/chapter-4/part-7/section-67-4-709/)
- [TCA Chapter 67-4, Part 7 — Business Tax Act](https://law.justia.com/codes/tennessee/title-67/chapter-4/part-7/)

### Other
- [CTAS — Business Tax](https://www.ctas.tennessee.edu/eli/business-tax)
- [MTAS — Minimum Business Tax](https://www.mtas.tennessee.edu/reference/minimum-business-tax)

## Output Format

When computing Tennessee business tax, present results as:

```markdown
## Tennessee Business Tax — [Period]

| Item | Amount |
|---|---|
| Jurisdiction | [City/County] |
| Gross Receipts | $XX,XXX.XX |
| Classification | [Class X] |
| Retailer/Wholesaler | [Retailer/Wholesaler] |
| Rate | X.XXXX% |
| State Tax | $XXX.XX |
| City Tax | $XXX.XX |
| **Total Tax Due** | **$XXX.XX** |
| Minimum Check | [≥$22 ✓ / Adjusted to $22] |
| Due Date | April 15 |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST determine classification based on dominant business activity
- MUST check retailer vs. wholesaler status (>50% threshold)
- MUST apply minimum tax ($22 per location, $450 for Class 5A)
- MUST compute per-jurisdiction when the business has multiple locations
- MUST check for exempt services before computing tax
- MUST warn if gross receipts approach the $100K registration threshold within 10%
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST cite sources when presenting rates or thresholds to the user

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
