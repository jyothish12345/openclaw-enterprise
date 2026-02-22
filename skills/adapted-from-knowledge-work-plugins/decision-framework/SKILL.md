---
name: decision-framework
description: Structure decisions using frameworks like pros/cons, decision matrix, or SWOT. Use when making important decisions, comparing options, or documenting decision rationale. Adapted for OpenClaw.
---

# Decision Framework (OpenClaw Adapted)

Structure decisions using proven frameworks. Compare options systematically and document rationale.

## When to Use
- Making important decisions
- Comparing multiple options
- Need systematic evaluation
- Documenting decision rationale
- Building consensus

## Decision Frameworks

### Pros/Cons Analysis

**Simple but effective:**

```markdown
# Decision: [What you're deciding]

## Option 1: [Name]

**Pros:**
- [Advantage 1]
- [Advantage 2]
- [Advantage 3]

**Cons:**
- [Disadvantage 1]
- [Disadvantage 2]

## Option 2: [Name]

**Pros:**
- [Advantage 1]
- [Advantage 2]

**Cons:**
- [Disadvantage 1]
- [Disadvantage 2]

## Recommendation

[Which option and why]
```

### Decision Matrix

**For multiple criteria:**

```markdown
| Option | Cost | Time | Quality | Risk | Total |
|--------|------|------|---------|------|-------|
| Option A | 3 | 4 | 5 | 2 | 14 |
| Option B | 5 | 3 | 3 | 4 | 15 |
| Option C | 2 | 2 | 4 | 5 | 13 |

Scale: 1 (worst) to 5 (best)

**Winner:** Option B (highest total score)
```

**Weighted matrix:**

```markdown
| Option | Cost (×3) | Time (×2) | Quality (×3) | Risk (×1) | Total |
|--------|-----------|-----------|--------------|-----------|-------|
| Option A | 9 | 8 | 15 | 2 | 34 |
| Option B | 15 | 6 | 9 | 4 | 34 |
| Option C | 6 | 4 | 12 | 5 | 27 |

**Winner:** Tie between A and B (consider qualitative factors)
```

### SWOT Analysis

**For strategic decisions:**

```markdown
# SWOT: [Decision/Option]

## Strengths
- [Internal advantage 1]
- [Internal advantage 2]

## Weaknesses
- [Internal limitation 1]
- [Internal limitation 2]

## Opportunities
- [External opportunity 1]
- [External opportunity 2]

## Threats
- [External risk 1]
- [External risk 2]

## Conclusion
[How SWOT informs the decision]
```

### Cost-Benefit Analysis

```markdown
# Cost-Benefit: [Decision]

## Costs

**One-time:**
- [Cost item]: $X

**Recurring:**
- [Cost item]: $Y/month

**Total:** $Z

## Benefits

**Quantifiable:**
- [Benefit]: $A value
- [Benefit]: B hours saved

**Qualitative:**
- [Benefit description]
- [Benefit description]

## Analysis

ROI: [Calculation]
Payback period: [Time]
Recommendation: [Go/No-go and why]
```

## Decision Document Template

```markdown
# Decision: [Title]

**Date:** [YYYY-MM-DD]
**Decider:** [Who makes final call]
**Stakeholders:** [Who's involved]

## Context

[Why this decision is needed now]

## Options

1. **[Option 1]**
   - Description: [What this entails]
   - Pros: [Advantages]
   - Cons: [Disadvantages]

2. **[Option 2]**
   - Description: [What this entails]
   - Pros: [Advantages]
   - Cons: [Disadvantages]

## Evaluation

[Matrix or framework used]

## Decision

**Chosen:** [Option X]

**Rationale:** [Why this option]

## Next Steps

- [ ] [Action 1]
- [ ] [Action 2]

## Review Date

[When to revisit this decision]
```

## File Storage

Decisions can be saved to:
- `/memory/decisions/YYYY-MM-DD-[decision-topic].md`

---
*Adapted for OpenClaw*
