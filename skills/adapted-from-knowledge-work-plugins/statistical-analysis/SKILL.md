---
name: statistical-analysis
description: Perform statistical analysis and hypothesis testing to validate findings. Use when running A/B tests, checking for significance, analyzing correlations, or understanding data distributions. Adapted for OpenClaw.
---

# Statistical Analysis (OpenClaw Adapted)

Perform statistical tests and analysis.

## When to Use
- Running A/B tests
- Checking for statistical significance
- Analyzing correlations
- Understanding distributions
- Validating findings

## Statistical Methods

### 1. Descriptive Statistics

- **Central Tendency:** Mean (Average), Median (Middle), Mode (Most frequent)
- **Dispersion:** Range (Max-Min), Variance, Standard Deviation, IQR (Q3-Q1)
- **Shape:** Skewness (Left/Right), Kurtosis (Peak/Flat)

### 2. Hypothesis Testing (A/B Testing)

**Steps:**
1. **Define Hypothesis:** Null (No difference), Alternative (Difference exists)
2. **Choose Test:** Based on data type (Means, Proportions)
3. **Set Significance Level (alpha):** Typically 0.05 (5%)
4. **Calculate P-Value:** Probability of observing results if Null is true
5. **Decision:** If P < alpha, Reject Null (Significant)

**Common Tests:**
- **T-Test:** Compare means of two groups (e.g., Average revenue per user)
- **Z-Test:** Compare proportions (e.g., Conversion rate)
- **Chi-Square:** Compare categorical variables (e.g., Device preference)
- **ANOVA:** Compare means of 3+ groups

### 3. Correlation & Regression

- **Correlation (Pearson/Spearman):** Strength/direction of linear relationship (-1 to +1)
- **Linear Regression:** Predict numeric outcome based on predictor(s) (y = mx + b)
- **Logistic Regression:** Predict binary outcome (Yes/No)

## Analysis Template

```markdown
# Statistical Analysis: [Test Name]

**Date:** [YYYY-MM-DD]
**Hypothesis:** [Null vs. Alternative]
**Significance Level:** 0.05

## Test Results

| Group | N | Mean / Rate | Std Dev |
|-------|---|-------------|---------|
| Control | 1000 | 10.5 | 2.1 |
| Variant | 1000 | 11.2 | 2.3 |

**Test Statistic:** [t-stat / z-score]
**P-Value:** [Value]
**Conclusion:** [Significant / Not Significant]

## Interpretation

- The difference of [0.7] is statistically significant (p < 0.05).
- We are 95% confident that the true difference is between [CI lower] and [CI upper].
- Recommendation: [Adopt Variant / Keep Control / Need more data]
```

## Using with OpenClaw

**Workflow:**
1. Formulate hypothesis.
2. Gather data using SQL or `read`.
3. Use Python/R (if available) or manual calculation for tests.
4. Interpret results and document findings.
5. Save to `/memory/data/analysis/`.

## File Storage
`/memory/data/analysis/[analysis-name].md`

---
*Adapted from knowledge-work-plugins (data/statistical-analysis) for OpenClaw*
