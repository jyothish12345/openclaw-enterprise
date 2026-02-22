---
name: product-competitive-analysis
description: Analyze competitors for product strategy. Create feature comparison matrices, map competitive landscapes (direct/indirect/adjacent), analyze positioning gaps, and conduct win/loss analysis. Use for product planning and strategy, distinct from sales battlecards.
---

# Product Competitive Analysis (OpenClaw Adapted)

Analyze competitors to inform product strategy, roadmap decisions, and positioning.

> **Note:** This skill focuses on **Product Strategy** (features, gaps, landscape). For Sales Enablement (battlecards, objection handling), use `competitive-intelligence`.

## When to Use
- Planning new features or products
- Assessing market gaps and opportunities
- Conducting win/loss analysis for product feedback
- Creating detailed feature comparison matrices
- Mapping the competitive landscape (Direct/Indirect/Adjacent)

## 1. Competitive Landscape Map

Classify competitors to understand threats and opportunities.

### Landscape Template

```markdown
# Competitive Landscape: [Market/Category]

## Direct Competitors
*Solve same problem, for same user, in same way.*
- **[Competitor A]**: [Brief description]
- **[Competitor B]**: [Brief description]

## Indirect Competitors
*Solve same problem, but differently (or manual workarounds).*
- **[Alternative A]**: [e.g., Spreadsheets, Email]
- **[Alternative B]**: [e.g., Outsourcing]

## Adjacent Competitors
*Don't compete today, but could (tech giants, startups).*
- **[Company A]**: [Why they are a threat]
- **[Company B]**: [Why they are a threat]

## Strategic Axes
*Position competitors on key dimensions (e.g., Simple vs. Powerful, SMB vs. Ent)*
- **Axis 1:** [Dimension A] <---> [Dimension B]
- **Axis 2:** [Dimension C] <---> [Dimension D]
```

## 2. Feature Comparison Matrix

Rate capabilities based on execution quality, not just checklist existence.

### Rating Scale
- 🟢 **Strong:** Best-in-class, deep functionality.
- 🟡 **Adequate:** Meets basic needs, not differentiated.
- 🔴 **Weak:** Exists but limited/poor execution.
- ⭕ **Absent:** Not available.

### Matrix Template

```markdown
# Feature Comparison: [Category]

| Capability Area | Us | [Comp A] | [Comp B] | Notes |
|----------------|----|----------|----------|-------|
| **[Core Area 1]** | | | | |
| Feature A | 🟢 | 🟡 | 🔴 | [Why we win/lose] |
| Feature B | 🟡 | 🟢 | ⭕ | [Gap to address] |
| **[Core Area 2]** | | | | |
| Feature C | 🟢 | 🟢 | 🟢 | [Table stakes] |
| Feature D | 🔴 | 🟡 | 🟢 | [Critical weakness] |

**Summary of Gaps:**
1. [Gap 1]
2. [Gap 2]

**Summary of Advantages:**
1. [Advantage 1]
2. [Advantage 2]
```

## 3. Win/Loss Analysis (Product Focus)

Analyze *why* products win or lose to inform the roadmap.

### Win/Loss Report Template

```markdown
# Win/Loss Analysis: [Period/Segment]

## Win Patterns (Why we win)
1. **[Pattern 1]**: [e.g., Superior UX / Integration X]
   - Evidence: [Quote/Metric]
2. **[Pattern 2]**

## Loss Patterns (Why we lose)
1. **[Pattern 1]**: [e.g., Missing Feature Y / Pricing Model]
   - Evidence: [Quote/Metric]
2. **[Pattern 2]**

## Feature Gaps (Dealbreakers)
- [Critical Gap 1]: Costing [X]% of lost deals
- [Critical Gap 2]: Costing [X]% of lost deals

## Recommendations
- [ ] Prioritize [Feature A] to address [Loss Pattern 1]
- [ ] Double down on [Feature B] to secure [Win Pattern 1]
```

## 4. Positioning Analysis

Identify open spaces in the market.

### Positioning Template

```markdown
# Positioning Analysis

| Competitor | Category Claim | Value Prop | Proof Points |
|------------|----------------|------------|--------------|
| **Us** | [Our Category] | [Our Promise] | [Our Evidence] |
| **[Comp A]** | [Their Category] | [Their Promise] | [Their Evidence] |
| **[Comp B]** | [Their Category] | [Their Promise] | [Their Evidence] |

## Gaps & Opportunities
- **Crowded Positions:** [Claims everyone makes]
- **Unclaimed Positions:** [Needs no one is addressing]
- **Our Opportunity:** [Where we can stand alone]
```

## 5. Market Trend Analysis

Track shifts that affect product strategy.

### Trend Report Template

```markdown
# Market Trends: [Quarter/Year]

## Key Trends
1. **[Trend Name]**
   - **Signal:** [Investment/Regulation/User Behavior]
   - **Impact:** [How it affects us]
   - **Competitor Response:** [What they are doing]
   - **Our Response:** [Lead / Fast Follow / Monitor / Ignore]

2. **[Trend Name]**
   ...
```

## File Storage

Save product competitive artifacts to:
- `/memory/product/competition/landscape.md`
- `/memory/product/competition/matrices/[category]-matrix.md`
- `/memory/product/competition/win-loss-[period].md`

## Using with OpenClaw

**Research Phase:**
```bash
# Get feature details
web_search "[Competitor] [feature] documentation"
web_search "[Competitor] [feature] reviews"

# Find positioning
web_search "site:[competitor.com] homepage"
web_search "[Competitor] pitch deck"
```

**Analysis Phase:**
1. Gather data using `web_search`.
2. Compile into matrices using templates above.
3. Save to `/memory/product/competition/`.

## Related Skills

- **competitive-intelligence** (Sales): Use for battlecards and sales talk tracks.
- **feature-spec**: Use comparison data to write better specs.
- **roadmap-management**: Use win/loss data to prioritize roadmap.
- **user-research-synthesis**: Combine market analysis with user interviews.

---
*Adapted from knowledge-work-plugins (product-management/competitive-analysis) for OpenClaw*
