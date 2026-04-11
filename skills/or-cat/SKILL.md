---
name: or-cat
description: Oregon Corporate Activity Tax (CAT) calculator for businesses. Computes tax on commercial activity over $1M with 35% cost subtraction, quarterly estimates, and filing deadlines. Triggers on Oregon CAT, Oregon business tax, corporate activity tax, Oregon commercial activity.
last_verified: 2026-04-11
---

# Oregon Corporate Activity Tax (CAT) Calculator

> Compute Oregon CAT liability for businesses operating in Oregon. Handles the $250 base + 0.57% rate, 35% cost subtraction (cost inputs vs. labor costs), quarterly estimated payments, and filing deadlines per Oregon DOR rules.

## When to Activate

- User mentions "Oregon CAT", "corporate activity tax", "Oregon business tax", "Oregon commercial activity"
- Computing annual or estimated quarterly CAT liability
- Determining if a business must register for the CAT
- Evaluating the 35% cost subtraction options
- Any business with commercial activity in Oregon

## What This Tax Is

Oregon's Corporate Activity Tax (CAT) is a **modified gross receipts tax** — it applies to commercial activity (gross receipts from transactions in Oregon), not net income. However, unlike a pure gross receipts tax, the CAT allows a **35% subtraction** for the greater of cost inputs or labor costs, making it a hybrid[^1].

The CAT was enacted in 2019 (effective 2020) and applies to **all business entity types** — corporations, partnerships, LLCs, sole proprietors, and S-corps. It is separate from Oregon's corporate income/excise tax and personal income tax[^1].

[^1]: [Oregon DOR — Corporate Activity Tax](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) (ORS Chapter 317A)

## Rate Structure

The CAT has a single rate structure with a base amount:

| Component | Amount | Source |
|---|---|---|
| Base tax | $250 | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Rate on commercial activity over $1M | 0.57% | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |

**Formula:**
```
CAT = $250 + (0.0057 × max(taxable_commercial_activity - $1,000,000, 0))
```

There are no tiered rates or classification-based rates. All business types pay the same rate[^1].

## Surcharge

Oregon does not impose an additional surcharge on high-grossing businesses for the CAT.

## Credits and Exemptions

### 35% Cost Subtraction

The CAT's key feature: businesses may subtract **35% of the greater of**[^2]:

- **Cost inputs** — Cost of goods sold as determined under the taxpayer's federal income tax method
- **Labor costs** — Wages, health insurance, retirement contributions (excluding amounts over $500,000 per employee and excluding employer payroll taxes)

The subtraction cannot exceed **95% of commercial activity**[^2].

**Cost inputs vs. labor costs:** Service businesses with few material costs typically benefit more from the labor cost subtraction. Manufacturing or retail businesses with significant COGS typically benefit from the cost input subtraction. Always compute both and use the greater amount[^2].

[^2]: [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) and [2025 Form OR-CAT Instructions](https://www.oregon.gov/dor/forms/FormsPubs/form-or-cat-instr_106-003-1_2025.pdf)

### Restrictions on Subtraction

- Cannot deduct expenses from transactions between members of a unitary group[^2]
- Cannot deduct cost inputs or labor costs associated with receipts excluded from commercial activity[^2]

### Exempt Entities

The following are exempt from the CAT (unless they have unrelated business taxable income)[^1]:

- 501(c)(3) nonprofits
- Farmers' cooperatives
- Government entities
- Hospitals and long-term care facilities
- Manufactured dwelling park cooperatives

### Exclusions from Commercial Activity

Certain receipts are excluded from the commercial activity calculation[^1]:

- Motor vehicle fuel sales
- Wholesale/retail grocery sales
- Out-of-state deliveries
- Agricultural cooperative sales
- Fluid milk sales by non-cooperative dairy farmers
- Inter-unitary group transactions
- Pass-through entity distributions

## Filing Requirements

### Registration and Filing Thresholds

| Threshold | Amount | Requirement | Source |
|---|---|---|---|
| $750,000 or less | No obligations | No registration, no filing, no payment | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Over $750,000 | Must register | Register within 30 days of reaching threshold | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Over $1,000,000 | Must file and pay | File annual return + pay tax | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |

### Filing Frequency and Due Dates

| Filing Type | Due Date | Source |
|---|---|---|
| Annual return | April 15 (15th of 4th month after tax year end) | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Q1 estimated payment | April 30 | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Q2 estimated payment | July 31 | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Q3 estimated payment | October 31 | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |
| Q4 estimated payment | January 31 | [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) |

Estimated quarterly payments are required if the business expects **$5,000 or more** in CAT liability for the year[^1].

### Filing Method

Returns must be filed by **mail or approved e-file vendor** — not through Revenue Online[^1].

### Unitary Groups

Entities with 50%+ common ownership and unitary business activity must file as a single taxpayer. One member is designated as the CAT entity. A combined return with an affiliate schedule listing all members with Oregon commercial activity is required[^1].

## Nexus

The CAT uses a **significant economic presence** standard for nexus, without a bright-line dollar threshold[^3]:

> "A person has nexus with Oregon to the extent the person can be required under the U.S. Constitution to remit the tax."

**In practice:** If your business regularly takes advantage of Oregon's economy to generate commercial activity — through customers, sales, or services in Oregon — you likely have CAT nexus. The Oregon DOR does not publish a specific dollar threshold like Washington's $100K test[^3].

If you're unsure whether your business has CAT nexus, consult the [Oregon DOR](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) or a tax professional.

[^3]: [Oregon DOR CAT](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx) (referencing OAR 150-317-1010 for nexus guidance)

## City/Local Tax Overlays

Oregon cities generally do not impose gross receipts taxes. However, **Portland** and **Multnomah County** impose local **net income taxes** on businesses (not gross receipts):

- **Portland Business License Tax**: 2.6% of net income
- **Multnomah County Business Income Tax (MCBIT)**: 2.0% of net income
- **Metro Supportive Housing Services (SHS)**: 1.0% of net income (businesses with $5M+ gross receipts only)

These are **net income taxes**, not gross receipts taxes — they work differently from the CAT. See `references/city-taxes.md` for full details on rates, thresholds, and filing.

Salem and Eugene do not impose city-level business income or gross receipts taxes.

## Calculation Process

### Step 1: Determine Total Oregon Commercial Activity
Sum all gross receipts from transactions and activity sourced to Oregon. Exclude exempt receipts (grocery, fuel, out-of-state, etc.).

### Step 2: Check Thresholds
- Under $750K: No obligations
- $750K–$1M: Must register, no tax due
- Over $1M: Proceed to Step 3

### Step 3: Compute 35% Subtraction
Calculate **both** options and use the **greater**:
```
cost_input_subtraction = 0.35 × cost_inputs
labor_cost_subtraction = 0.35 × labor_costs
subtraction = max(cost_input_subtraction, labor_cost_subtraction)
subtraction = min(subtraction, 0.95 × commercial_activity)  # Cap at 95%
```

### Step 4: Compute Taxable Commercial Activity
```
taxable = commercial_activity - subtraction
```

### Step 5: Compute CAT
```
cat = $250 + (0.0057 × max(taxable - $1,000,000, 0))
```

### Step 6: Check for Portland/Multnomah Taxes
If operating in Portland or Multnomah County, compute city/county net income taxes separately.

## Example: Oregon Software Consultancy

```
Annual Oregon commercial activity: $1,800,000
Cost inputs (COGS): $120,000
Labor costs (wages + benefits): $600,000

Step 1: Commercial activity = $1,800,000

Step 2: Over $1M → tax applies

Step 3: Subtraction
  Cost input subtraction: 0.35 × $120,000 = $42,000
  Labor cost subtraction: 0.35 × $600,000 = $210,000
  Use labor (greater): $210,000
  Cap check: 0.95 × $1,800,000 = $1,710,000 → $210,000 is under cap ✓

Step 4: Taxable = $1,800,000 - $210,000 = $1,590,000

Step 5: CAT = $250 + (0.0057 × ($1,590,000 - $1,000,000))
       CAT = $250 + (0.0057 × $590,000)
       CAT = $250 + $3,363.00
       CAT = $3,613.00

Annual CAT liability: $3,613.00
```

## Common Mistakes

1. **Using cost inputs when labor costs are higher** — Always compute both subtraction options and use the greater amount[^2]
2. **Including exempt receipts** — Grocery sales, motor vehicle fuel, and out-of-state deliveries must be excluded from commercial activity[^1]
3. **Confusing CAT with Oregon income tax** — The CAT is a separate tax on commercial activity, not a replacement for corporate income/excise tax or personal income tax[^1]
4. **Forgetting the $250 base** — The CAT always includes a $250 base amount, even if taxable commercial activity just exceeds $1M[^1]
5. **Missing the registration threshold** — Registration is required at $750K, even though tax isn't due until $1M. Failure to register incurs $100/month penalty (max $1,000/year)[^1]
6. **Exceeding the subtraction cap** — The 35% subtraction cannot exceed 95% of commercial activity[^2]
7. **Including inter-group transactions** — Unitary group members cannot deduct expenses from transactions between members[^2]

## References

### Official Oregon DOR
- [Corporate Activity Tax Overview](https://www.oregon.gov/dor/programs/businesses/pages/corporate-activity-tax.aspx)
- [2025 Form OR-CAT Instructions](https://www.oregon.gov/dor/forms/FormsPubs/form-or-cat-instr_106-003-1_2025.pdf)
- [2025 Form OR-CAT Return](https://www.oregon.gov/dor/forms/FormsPubs/form-or-cat_106-003_2025.pdf)
- [How to Calculate CAT Liability](https://www.oregon.gov/dor/programs/businesses/Documents/CAT/HowtocalculateCATliability.pdf)

### Legislation
- [ORS Chapter 317A — Corporate Activity Tax](https://www.oregonlegislature.gov/bills_laws/ors/ors317A.html)
- [OAR 150-317-1010 — CAT Nexus](https://secure.sos.state.or.us/oard/displayDivisionRules.action?selectedDivision=6853)

### Portland / Multnomah County
- [Portland Business Tax Filing](https://www.portland.gov/revenue/business-tax)
- [Multnomah County Business Income Tax](https://multco.us/info/multnomah-county-business-income-tax-mcbit)

## Output Format

When computing CAT, present results as:

```markdown
## Oregon CAT — [Period]

| Item | Amount |
|---|---|
| Oregon Commercial Activity | $XX,XXX.XX |
| Cost Input Subtraction (35%) | $XX,XXX.XX |
| Labor Cost Subtraction (35%) | $XX,XXX.XX |
| **Subtraction Used (greater)** | **$XX,XXX.XX** |
| Taxable Commercial Activity | $XX,XXX.XX |
| Base Tax | $250.00 |
| Tax on Activity over $1M (0.57%) | $X,XXX.XX |
| **Total CAT Due** | **$X,XXX.XX** |
| Due Date | [date] |

*Portland/Multnomah taxes (if applicable):*
| Tax | Rate | Taxable Income | Tax Due |
|---|---|---|---|
| Portland BLT | 2.6% | $XX,XXX | $X,XXX |
| Multnomah MCBIT | 2.0% | $XX,XXX | $X,XXX |
```

## Constraints

- MUST use Decimal arithmetic for all money calculations — never floats
- MUST compute both cost input and labor cost subtractions and use the greater
- MUST verify the subtraction does not exceed 95% of commercial activity
- MUST include the $250 base tax in every calculation
- MUST check for Portland/Multnomah County tax obligations in addition to state CAT
- MUST warn if commercial activity approaches the $1M taxable threshold within 10%
- MUST warn and show extrapolation method when estimating annual liability from partial-year data
- MUST note that CAT is filed by mail or e-file vendor, not Revenue Online
- MUST cite sources when presenting rates or thresholds to the user

## Disclaimer

This provides general tax guidance based on publicly available information. It is not legal or tax advice. Consult a qualified tax professional for your specific situation.
