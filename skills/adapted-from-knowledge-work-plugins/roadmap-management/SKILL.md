---
name: roadmap-management
description: Plan and prioritize product roadmaps using frameworks like RICE, MoSCoW, and ICE. Use when creating a roadmap, reprioritizing features, mapping dependencies, or presenting roadmap tradeoffs to stakeholders. Adapted for OpenClaw.
---

# Roadmap Management (OpenClaw Adapted)

Plan, prioritize, and communicate product roadmaps using proven frameworks. Help product managers build roadmaps that are strategic, realistic, and useful for decision-making.

## When to Use
- Creating or updating a product roadmap
- Prioritizing features in backlog
- Mapping dependencies between initiatives
- Choosing roadmap format (Now/Next/Later, Quarterly, etc.)
- Presenting roadmap tradeoffs to stakeholders
- Capacity planning for team
- Communicating roadmap changes

## Roadmap Frameworks

### Now / Next / Later

Simplest and often most effective format:

- **Now** (current sprint/month): Committed work, high confidence, actively building
- **Next** (next 1-3 months): Planned work, good confidence in what, less in when
- **Later** (3-6+ months): Directional, strategic bets, scope/timing flexible

**When to use:** Most teams, most of the time. Good for external communication and leadership because it avoids false precision on dates.

### Quarterly Themes

Organize around 2-3 themes per quarter:

- Each theme = strategic investment area (e.g., "Enterprise readiness", "Activation improvements")
- Under each theme, list specific initiatives
- Themes map to company/team OKRs
- Makes it easy to explain WHY you're building what you're building

**When to use:** When you need to show strategic alignment. Good for planning meetings and executive communication.

### OKR-Aligned Roadmap

Map roadmap items directly to Objectives and Key Results:

- Start with team's OKRs for the period
- Under each Key Result, list initiatives that will move that metric
- Include expected impact of each initiative
- Creates clear accountability between what you build and what you measure

**When to use:** Organizations that run on OKRs. Ensures every initiative has clear "why" tied to measurable outcomes.

### Timeline / Gantt View

Calendar-based view with items on timeline:

- Shows start dates, end dates, durations
- Visualizes parallelism and sequencing
- Good for identifying resource conflicts
- Shows dependencies between items

**When to use:** Execution planning with engineering. Identifying scheduling conflicts. NOT good for external communication (creates false precision).

## Prioritization Frameworks

### RICE Score

Score each initiative: RICE = (Reach × Impact × Confidence) / Effort

- **Reach**: How many users/customers affected in time period? (concrete numbers: "500 users/quarter")
- **Impact**: How much will this move needle for each person? Scale: 3=massive, 2=high, 1=medium, 0.5=low, 0.25=minimal
- **Confidence**: How confident in estimates? 100%=high (data-backed), 80%=medium (some evidence), 50%=low (gut feel)
- **Effort**: How many person-months? Include engineering, design, other functions

**When to use:** Need quantitative, defensible prioritization. Good for comparing large backlog. Less good for strategic bets where impact is hard to estimate.

### MoSCoW

Categorize: Must have, Should have, Could have, Won't have

- **Must have**: Roadmap is failure without these. Non-negotiable commitments
- **Should have**: Important and expected, but delivery viable without them
- **Could have**: Desirable but clearly lower priority. Only if capacity allows
- **Won't have**: Explicitly out of scope for this period. Important to list for clarity

**When to use:** Scoping a release or quarter. Negotiating with stakeholders about what fits. Forces prioritization conversations.

### ICE Score

Simpler than RICE. Score 1-10 on three dimensions:

- **Impact**: How much will this move the target metric?
- **Confidence**: How confident in the impact estimate?
- **Ease**: How easy to implement? (inverse of effort — higher = easier)

ICE Score = Impact × Confidence × Ease

**When to use:** Quick prioritization of feature backlog. Good for early-stage products or when lacking data for RICE.

### Value vs Effort Matrix

Plot initiatives on 2×2:

- **High value, Low effort** (Quick wins): Do first
- **High value, High effort** (Big bets): Plan carefully, worth investment
- **Low value, Low effort** (Fill-ins): Do when spare capacity
- **Low value, High effort** (Money pits): Don't do, remove from backlog

**When to use:** Visual prioritization in team planning. Building shared understanding of tradeoffs.

## Dependency Mapping

### Identifying Dependencies

Look for:

- **Technical**: Feature B requires infrastructure from Feature A
- **Team**: Feature requires work from another team (design, platform, data)
- **External**: Waiting on vendor, partner, third-party integration
- **Knowledge**: Need research/investigation results before starting
- **Sequential**: Must ship A before starting B (shared code, user flow)

### Managing Dependencies

- List all dependencies explicitly in roadmap
- Assign owner to each dependency
- Set "need by" date
- Build buffer around dependencies (highest-risk items)
- Flag cross-team dependencies early
- Have contingency plan if dependency slips

### Reducing Dependencies

- Build simpler version that avoids dependency?
- Parallelize using interface contract or mock?
- Sequence differently to move dependency earlier?
- Absorb work into your team to remove cross-team coordination?

## Capacity Planning

### Estimating Capacity

- Start with: number of engineers × time period
- Subtract overhead: meetings, on-call, interviews, holidays, PTO
- Rule of thumb: engineers spend 60-70% on planned feature work
- Factor in team ramp time for new members

### Allocating Capacity

Healthy allocation for most product teams:

- **70% planned features**: Roadmap items advancing strategic goals
- **20% technical health**: Tech debt, reliability, performance, developer experience
- **10% unplanned**: Buffer for urgent issues, quick wins, requests from other teams

Adjust based on context:
- New product: more features, less tech debt
- Mature product: more tech debt and reliability
- Post-incident: more reliability, less features
- Rapid growth: more scalability and performance

### Capacity vs Ambition

- If commitments exceed capacity, something must give
- Don't solve by pretending people can do more — solve by cutting scope
- When adding to roadmap, ask: "What comes off?"
- Better to commit to fewer things and deliver reliably

## Communicating Roadmap Changes

### When Roadmap Changes

Common triggers:
- New strategic priority from leadership
- Customer feedback changing priorities
- Technical discovery changing estimates
- Dependency slip from another team
- Resource change (team size, key person leaves)
- Competitive move requiring response

### How to Communicate Changes

1. **Acknowledge the change**: Be direct about what's changing and why
2. **Explain the reason**: What new information drove this?
3. **Show the tradeoff**: What was deprioritized to make room? Or what's slipping?
4. **Show new plan**: Updated roadmap with changes reflected
5. **Acknowledge impact**: Who's affected and how?

### Avoiding Roadmap Whiplash

- Don't change for every new information piece. Have threshold for change
- Batch updates at natural cadences (monthly, quarterly) unless truly urgent
- Distinguish "roadmap change" (strategic reprioritization) vs. "scope adjustment" (normal execution refinement)
- Track frequency of changes. Frequent changes may signal unclear strategy

## Roadmap Templates

### Now/Next/Later Template

```markdown
# Product Roadmap

## Now (Current Month)
- [ ] **[Initiative]** — [Brief description]
  - Impact: [Expected outcome]
  - Owner: [Name]
  - Status: [In progress / Blocked / On track]

## Next (Next 1-3 Months)
- [ ] **[Initiative]** — [Brief description]
  - Impact: [Expected outcome]
  - Dependencies: [If any]

## Later (3-6+ Months)
- [ ] **[Initiative]** — [Brief description]
  - Strategic value: [Why this matters]
```

### Quarterly Theme Template

```markdown
# Q[X] YYYY Roadmap

## Theme 1: [Theme Name]
**Goal:** [What we're trying to achieve]

**Initiatives:**
- [Initiative 1] — [Expected impact]
- [Initiative 2] — [Expected impact]

## Theme 2: [Theme Name]
**Goal:** [What we're trying to achieve]

**Initiatives:**
- [Initiative 1] — [Expected impact]
```

### RICE Prioritization Template

```markdown
# Feature Prioritization

| Feature | Reach | Impact | Confidence | Effort | RICE Score |
|---------|-------|--------|------------|--------|------------|
| [Feature 1] | 500/qtr | 2 | 80% | 2 | 400 |
| [Feature 2] | 1000/qtr | 1 | 100% | 3 | 333 |
| [Feature 3] | 200/qtr | 3 | 50% | 1 | 300 |

**Priority order:** Feature 1, Feature 2, Feature 3
```

## File Storage

Roadmaps can be saved to:
- `/memory/roadmaps/YYYY-QX-roadmap.md`
- `/memory/roadmaps/now-next-later.md`
- `/memory/prioritization/YYYY-MM-DD-rice-scores.md`

## Using This Skill

**What to provide:**
1. **Initiatives list** — What features/projects you're considering
2. **Context** — Team capacity, strategic goals, constraints
3. **Data if available** — User impact estimates, effort estimates
4. **Format preference** — Which roadmap framework to use

**What I'll provide:**
1. **Prioritized roadmap** — Using chosen framework
2. **Rationale** — Why items are ordered as they are
3. **Dependency mapping** — What depends on what
4. **Capacity analysis** — Does it fit in available time
5. **Communication template** — How to present to stakeholders

## Best Practices

1. **Be ruthless about Now** — Only committed work goes here
2. **Show the tradeoffs** — Explain what's NOT being done
3. **Map dependencies visibly** — Don't hide them
4. **Update regularly** — Stale roadmaps worse than no roadmap
5. **Match format to audience** — Executives ≠ Engineering
6. **Avoid false precision** — Dates in distant future are fiction
7. **Tie to outcomes** — Why each initiative matters

## Related OpenClaw Skills

- **feature-spec** — Write detailed specs for roadmap items
- **user-research-synthesis** — Research to inform prioritization
- **task-management** — Track execution of roadmap items
- **note-taking** — Document roadmap planning discussions

---
*Adapted from knowledge-work-plugins (product-management/roadmap-management) for OpenClaw*
