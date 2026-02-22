---
name: reconciliation
description: Reconcile accounts, identify discrepancies, and document adjustments. Use for bank reconciliation, credit card reconciliation, and account variance analysis. Adapted for OpenClaw.
---

# Reconciliation (OpenClaw Adapted)

Reconcile financial accounts and identify discrepancies.

## When to Use
- Bank reconciliation
- Credit card reconciliation
- Account variance analysis
- Month-end close preparation
- Audit preparation

## Bank Reconciliation Template

```markdown
# Bank Reconciliation: [Account Name]

**Period:** [Month YYYY]
**Account:** [Account number - last 4 digits]
**Reconciler:** [Name]
**Date:** [YYYY-MM-DD]

---

## Balances

**Bank statement balance:** $[X,XXX.XX]
**Book balance:** $[X,XXX.XX]
**Difference:** $[X.XX]

---

## Outstanding Items

### Deposits in Transit
| Date | Description | Amount |
|------|-------------|--------|
| [Date] | [Description] | $[X.XX] |

**Total deposits in transit:** $[X.XX]

### Outstanding Checks
| Check # | Date | Payee | Amount |
|---------|------|-------|--------|
| [####] | [Date] | [Name] | $[X.XX] |

**Total outstanding checks:** $[X.XX]

---

## Adjustments Needed

### Bank Errors
| Description | Amount | Action |
|-------------|--------|--------|
| [Error description] | $[X.XX] | [Contact bank] |

### Book Errors
| Description | Amount | Action |
|-------------|--------|--------|
| [Error description] | $[X.XX] | [Journal entry needed] |

---

## Reconciliation Calculation

```
Bank statement balance:        $[X,XXX.XX]
+ Deposits in transit:         $[XXX.XX]
- Outstanding checks:          ($[XXX.XX])
= Adjusted bank balance:       $[X,XXX.XX]

Book balance:                  $[X,XXX.XX]
+ Bank adjustments:            $[XX.XX]
- Book adjustments:            ($[XX.XX])
= Adjusted book balance:       $[X,XXX.XX]

Difference:                    $0.00 ✓
```

---

## Status

- [ ] Reconciliation complete
- [ ] Adjusting entries recorded
- [ ] Documentation filed
- [ ] Reviewed by [Name]
```

## File Storage
`/memory/finance/reconciliation/[YYYY-MM]-[account-name].md`

---

*Adapted for OpenClaw*
