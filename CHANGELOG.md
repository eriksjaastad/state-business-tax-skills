# Changelog

All notable changes to tax rates, thresholds, and rules in this project.

## 2026-04-11

### TX Franchise Tax — Initial Release

- **Added:** Texas Franchise Tax skill with 0.75% standard / 0.375% retail-wholesale / 0.331% EZ rates
- **Added:** 4 margin calculation methods (70% revenue, COGS, compensation, $1M deduction)
- **Added:** No-tax-due threshold ($2.65M for 2026), per-person compensation cap ($480K for 2026)
- **Added:** EZ computation for entities under $20M revenue
- **Effective:** Report year 2026 (filed May 15, 2026)
- **Source:** [Texas Tax Code Chapter 171](https://statutes.capitol.texas.gov/Docs/TX/htm/TX.171.htm)

### DE GRT — Initial Release

- **Added:** Delaware Gross Receipts Tax skill with rates by business category (0.0945%–1.9914%)
- **Added:** Monthly exclusion amounts ($10K wholesalers to $1.25M manufacturers)
- **Added:** Monthly/quarterly filing requirements, mandatory electronic filing
- **Source:** [Title 30, Chapter 23](https://delcode.delaware.gov/title30/c023/index.html)

### NV Commerce Tax — Initial Release

- **Added:** Nevada Commerce Tax skill with 26 NAICS-based industry rates (0.051%–0.331%)
- **Added:** $4M revenue threshold, July-June fiscal year, August 14 due date
- **Added:** Commerce Tax credit against Modified Business Tax
- **Source:** [NRS Chapter 363C](https://www.leg.state.nv.us/nrs/NRS-363C.html)

### TN Business Tax — Initial Release

- **Added:** Tennessee Business Tax skill with 5 classifications and retailer/wholesaler rate splits
- **Added:** Per-jurisdiction filing ($100K threshold per jurisdiction), $22 minimum tax per location
- **Added:** State + city dual-tax structure, exempt services list
- **Added:** Bright-line nexus ($500K receipts, $50K property/payroll)
- **Source:** [TCA § 67-4-709](https://law.justia.com/codes/tennessee/title-67/chapter-4/part-7/section-67-4-709/)

### OH CAT — Initial Release

- **Added:** Ohio Commercial Activity Tax skill with 0.26% rate on gross receipts over $6M
- **Added:** Bright-line nexus thresholds ($500K receipts, $50K property/payroll per ORC 5751.01)
- **Added:** Ownership aggregation rules for multi-entity owners
- **Added:** City municipal income taxes: Columbus (2.5%), Cleveland (2.5%), Cincinnati (1.8%)
- **Added:** Threshold history ($150K → $3M → $6M) and AMT elimination
- **Effective:** January 1, 2025 ($6M threshold)
- **Source:** [ORC Chapter 5751](https://codes.ohio.gov/ohio-revised-code/chapter-5751)

### OR CAT — Initial Release

- **Added:** Oregon Corporate Activity Tax skill with $250 base + 0.57% rate on commercial activity over $1M
- **Added:** 35% cost subtraction (cost inputs vs. labor costs, capped at 95% of commercial activity)
- **Added:** Registration threshold ($750K), filing threshold ($1M), quarterly estimated payment rules ($5K+)
- **Added:** Portland Business License Tax (2.6%), Multnomah County MCBIT (2.0%), Metro SHS (1.0% over $5M)
- **Added:** Exemptions (nonprofits, hospitals, government) and exclusions (grocery, fuel, out-of-state)
- **Effective:** January 1, 2020 (CAT inception); January 1, 2026 (Portland BLT exemption raised to $75K)
- **Source:** [ORS Chapter 317A](https://www.oregonlegislature.gov/bills_laws/ors/ors317A.html)

### WA B&O — Initial Release with 2025 Legislative Changes

- **Added:** Washington B&O tax skill with tiered Service & Other Activities rates (1.5% / 1.75% / 2.1%)
- **Added:** Small business credit amounts and phase-out schedules (quarterly and annual)
- **Added:** High-grossing business surcharge ($250M threshold, 0.5% rate, 2026-2030)
- **Added:** City B&O overlays for Seattle, Tacoma, Bellevue, Everett with verified rates
- **Added:** Nexus thresholds ($100K economic nexus per RCW 82.04.067)
- **Added:** Seattle Proposition 2 changes (effective Jan 1, 2026): $2M threshold, new rates (0.658% service, 0.342% retailing)
- **Effective:** October 1, 2025 (tiered rates); January 1, 2026 (surcharge, Seattle changes)
- **Source:** [ESHB 2081, Chapter 420, Laws of 2025](https://app.leg.wa.gov/BillSummary/?BillNumber=2081&Year=2025&Initiative=false)
