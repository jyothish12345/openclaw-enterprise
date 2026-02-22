---
name: data-validation
description: Validate data quality and integrity checks for datasets and pipelines. Use when checking for nulls, duplicates, outliers, schema conformity, and business rule violations. Adapted for OpenClaw.
---

# Data Validation (OpenClaw Adapted)

Validate data quality and integrity.

## When to Use
- Checking for nulls or missing data
- Identifying duplicate records
- Detecting outliers
- Validating schema conformity
- Ensuring business rule compliance

## Data Validation Framework

### 1. Completeness Checks
- **Null Values:** Percentage of rows with null/empty values
- **Missing Records:** Expected records that are absent (e.g., missing daily files)
- **Minimum Data Volume:** At least N rows per day

### 2. Uniqueness Checks
- **Primary Keys:** Must be unique and non-null
- **Natural Keys:** Combination of fields (e.g., user_id + date) must be unique
- **Referential Integrity:** Foreign keys must exist in parent tables

### 3. Validity Checks (Format & Range)
- **Date Format:** YYYY-MM-DD or valid timestamp
- **Numeric Range:** Prices > 0, percentages 0-100
- **String Length:** Email addresses, phone numbers, postal codes
- **Categorical Values:** Must match allowed list (e.g., Status: Active, Inactive)

### 4. Consistency Checks
- **Cross-Column:** Start Date <= End Date
- **Cross-Row:** Running total increases monotonically
- **Cross-Table:** Sum of line items = Total order amount

### 5. Anomaly Detection
- **Statistical Outliers:** Values > 3 standard deviations from mean
- **Sudden Changes:** Large jump/drop in daily volume or metric

## Validation Rules Template

```markdown
# Data Validation: [Dataset Name]

**Date:** [YYYY-MM-DD]
**Status:** [Pass / Fail / Warn]

## Summary

| Check | Passed | Failed | Rows Impacted | Severity |
|-------|--------|--------|---------------|----------|
| **Null IDs** | ✅ | 0 | 0 | Critical |
| **Unique PK** | ✅ | 0 | 0 | Critical |
| **Valid Emails** | ⚠️ | 5 | 5 | High |
| **Price > 0** | ✅ | 0 | 0 | Medium |

## Detailed Findings

**Issue 1: Invalid Email Format**
- **Count:** 5 records
- **Example:** "user@domain..com"
- **Action:** Fix source system or exclude records

**Issue 2: Price Outliers**
- **Count:** 0 records (None > 3 std dev)
- **Action:** None

## Recommendations
- [ ] Investigate email validation logic
- [ ] Monitor price trends for future anomalies
```

## Using with OpenClaw

**Workflow:**
1. Define validation rules.
2. Run SQL queries or scripts to check rules.
3. Generate validation report.
4. Alert on critical failures.
5. Save report to `/memory/data/validation/`.

## File Storage
`/memory/data/validation/[dataset-name]-validation.md`

---
*Adapted from knowledge-work-plugins (data/data-validation) for OpenClaw*
