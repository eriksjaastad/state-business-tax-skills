# Changelog

All notable changes to tax rates, thresholds, and rules in this project.

## 2026-04-11

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
