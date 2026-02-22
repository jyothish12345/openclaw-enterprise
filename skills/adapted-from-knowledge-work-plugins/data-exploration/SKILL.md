---
name: data-exploration
description: Profile and explore datasets to understand their shape, quality, and patterns before analysis. Use when encountering a new dataset, assessing data quality, discovering column distributions, identifying nulls and outliers, or deciding which dimensions to analyze. Adapted for OpenClaw.
---

# Data Exploration (OpenClaw Adapted)

Systematic methodology for profiling datasets, assessing data quality, and discovering patterns.

## When to Use
- Encountering a new dataset
- Assessing data quality (nulls, duplicates)
- Discovering column distributions
- Identifying outliers
- Understanding schema structure
- Preparing data for analysis

## Data Profiling Framework

### 1. Structural Overview
- **Row count:** How big is the data?
- **Column count:** How wide is it?
- **Granularity:** What does one row represent?
- **Primary key:** Is it unique?
- **Time range:** Start and end dates

### 2. Column Profiling

**Categorical Columns:**
- **Cardinality:** Count of distinct values
- **Top values:** Most frequent categories
- **Null rate:** Percentage of missing values
- **Anomalies:** Unexpected string formats

**Numeric Columns:**
- **Descriptive stats:** Min, Max, Mean, Median
- **Distribution:** Skewed? Normal? Uniform?
- **Zero count:** Number of zero values
- **Negative count:** Unexpected negatives

**Date Columns:**
- **Range:** Min to Max date
- **Gaps:** Missing time periods
- **Format consistency:** One format or mixed?

## Data Quality Assessment

| Quality Dimension | Check | Status (🟢/🟡/🔴) |
|-------------------|-------|-------------------|
| **Completeness** | Null rates < 5% | |
| **Uniqueness** | No duplicate primary keys | |
| **Consistency** | Value formats match | |
| **Timeliness** | Data is current | |
| **Validity** | Values within expected range | |

## Exploratory SQL Queries

Use these patterns to explore data (adjust for your SQL dialect):

### Quick Overview
```sql
SELECT * FROM table_name LIMIT 10;
SELECT COUNT(*) FROM table_name;
```

### Categorical Distribution
```sql
SELECT column_name, COUNT(*) as frequency, 
       (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM table_name)) as percent
FROM table_name
GROUP BY column_name
ORDER BY frequency DESC
LIMIT 20;
```

### Numeric Distribution
```sql
SELECT MIN(col), AVG(col), MAX(col), 
       PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY col) as median
FROM table_name;
```

### Time Series Trend
```sql
SELECT DATE_TRUNC('month', created_at) as month, COUNT(*)
FROM table_name
GROUP BY 1
ORDER BY 1;
```

### Null Check
```sql
SELECT 
  COUNT(*) as total_rows,
  SUM(CASE WHEN col1 IS NULL THEN 1 ELSE 0 END) as col1_nulls,
  SUM(CASE WHEN col2 IS NULL THEN 1 ELSE 0 END) as col2_nulls
FROM table_name;
```

## Exploration Report Template

```markdown
# Data Profile: [Dataset Name]

**Date:** [YYYY-MM-DD]
**Source:** [File/Table Name]
**Rows:** [Count]
**Columns:** [Count]

## 1. Schema Overview
| Column | Type | Description | Null % |
|--------|------|-------------|--------|
| id | INT | Primary Key | 0% |
| category | STR | Product Category | 2% |
| amount | DEC | Transaction Value | 0% |

## 2. Key Findings

### Data Quality
- **Completeness:** [Assessment]
- **Consistency:** [Assessment]
- **Issues:**
  - [Issue 1]
  - [Issue 2]

### Distributions
- **[Column A]:** [Description of distribution]
- **[Column B]:** [Description of distribution]

### Patterns
- [Pattern 1 observed]
- [Pattern 2 observed]

## 3. Recommendations
- [ ] Clean [Column X] nulls
- [ ] Standardize [Column Y] values
- [ ] Investigate outliers in [Column Z]
```

## File Storage
`/memory/data/profiles/[dataset-name]-profile.md`

---\n*Adapted from knowledge-work-plugins (data/data-exploration) for OpenClaw*
