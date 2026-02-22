---
name: competitive-intelligence
description: Research competitors and build battlecards. Track competitor moves, pricing, features, and positioning. Generate competitive analysis and sales talk tracks. Adapted for OpenClaw.
---

# Competitive Intelligence (OpenClaw Adapted)

Research competitors systematically and build actionable battlecards.

## When to Use
- Researching competitors before deals
- Building competitive battlecards
- Tracking competitor product updates
- Preparing for competitive situations
- Training sales team on competition

## Competitive Intelligence Brief Template

```markdown
# Competitive Intelligence: [Competitor Name]

**Date:** [YYYY-MM-DD]
**Analyst:** [Name]
**Last Updated:** [Date]

---

## Company Profile

**Founded:** [Year]
**Funding:** [Stage / Amount]
**Employees:** [Count estimate]
**Target Market:** [Who they sell to]
**Website:** [URL]

---

## Product Overview

**What they sell:**
[1-2 sentence description]

**Their positioning:**
"[How they describe themselves - tagline/value prop]"

**Key features:**
- [Feature 1]
- [Feature 2]
- [Feature 3]

---

## Pricing

**Model:** [Per seat / Usage-based / Flat fee]
**Entry price:** $[X]/month or [Starting tier]
**Enterprise:** [Custom / Published price]
**Hidden costs:** [Implementation, training, etc.]

---

## Recent Activity (Last 90 Days)

### Product Releases
| Date | Release | Impact |
|------|---------|--------|
| [Date] | [Feature/Product] | [Why it matters] |

### News/Announcements
- [Date]: [Announcement]

---

## Competitive Positioning

### Where They Win

**Strength 1: [Area]**
- **Their advantage:** [What they do well]
- **Our counter:** [How to handle]

**Strength 2: [Area]**
- **Their advantage:** [What they do well]
- **Our counter:** [How to handle]

---

### Where We Win

**Our Advantage 1: [Area]**
- **Why we win:** [Our strength]
- **Proof point:** [Evidence, customer quote, metric]

**Our Advantage 2: [Area]**
- **Why we win:** [Our strength]
- **Proof point:** [Evidence]

---

## Sales Talk Tracks

### Scenario 1: They Come Up Early

**If prospect mentions them in discovery:**

"[Talk track - acknowledge their strength, position our differentiation]"

**Example:**
"They're a solid choice for [their use case]. Where we see teams choose us instead is when [your differentiator]. For example, [proof point]."

---

### Scenario 2: Displacement (Customer Uses Them)

**If prospect currently uses competitor:**

"[Talk track - understand their experience, identify gaps]"

**Questions to ask:**
- "What's working well with [competitor]?"
- "Where are you seeing challenges?"
- "What would you change if you could?"

**Position based on their gaps:**
"[How to position your solution]"

---

### Scenario 3: Late Addition to Eval

**If competitor added late in evaluation:**

"[Talk track - anchor on your differentiation, show momentum]"

---

## Common Objections & Responses

| Objection | Response |
|-----------|----------|
| "They have [feature]" | "[Acknowledge], [but/and], [differentiate]. [Proof point]." |
| "They're cheaper" | "[Acknowledge price], [value differentiation], [TCO if applicable]." |
| "They're more established" | "[Acknowledge], [agility/innovation angle], [recent customer wins]." |

---

## Landmine Questions

Questions that expose their weaknesses naturally:

1. "[Question that reveals gap 1]"
2. "[Question that reveals gap 2]"
3. "[Question that reveals gap 3]"

**Example:**
"How do you handle [scenario where they're weak]?"

---

## Win/Loss Patterns

**We typically win when:**
- [Pattern 1 - e.g., "Complex integration requirements"]
- [Pattern 2 - e.g., "Enterprise security needed"]
- [Pattern 3 - e.g., "Scalability is priority"]

**We typically lose when:**
- [Pattern 1 - e.g., "Price is primary driver"]
- [Pattern 2 - e.g., "Simple use case"]

---

## Intelligence Sources

**Public sources:**
- [Source 1: e.g., Website, changelog]
- [Source 2: e.g., G2 reviews]
- [Source 3: e.g., Job postings]

**Field intel:**
- [Date]: [Insight from customer conversation]
- [Date]: [Insight from lost deal post-mortem]

---

## Next Refresh Date

[ ] **[Date]** — Monthly refresh
[ ] Before major deals involving this competitor
```

---

## Research Using OpenClaw

### Web Research Workflow

```bash
# Company overview
web_search "[Competitor] product features"
web_search "[Competitor] pricing"

# Recent activity
web_search "[Competitor] news last 90 days"
web_search "[Competitor] product updates changelog"

# Customer sentiment
web_search "[Competitor] reviews G2 Capterra"
web_search "[Competitor] vs alternatives"

# Strategic signals
web_search "[Competitor] careers hiring"
web_search "[Competitor] funding announcement"

# Save findings
write to /memory/competitive-intel/[competitor-name].md
```

---

## Battlecard Comparison Matrix

```markdown
# Competitive Comparison Matrix

**Updated:** [YYYY-MM-DD]

| Feature/Capability | Us | [Comp 1] | [Comp 2] | [Comp 3] |
|-------------------|----|-----------|-----------|-----------  |
| [Feature 1] | ✅ Best-in-class | ✅ Good | ⚠️ Limited | ❌ No |
| [Feature 2] | ✅ Yes | ✅ Yes | ✅ Yes | ⚠️ Beta |
| [Feature 3] | ✅ Native | ⚠️ 3rd party | ❌ No | ❌ No |
| **Pricing** | $[X]/user | $[Y]/user | $[Z]/user | Custom |
| **Best For** | [Use case] | [Use case] | [Use case] | [Use case] |

**Legend:**
- ✅ Strong
- ⚠️ Limited/In progress
- ❌ Not available
```

---

## Quick Competitive Snapshot

**Use for rapid prep before calls:**

```markdown
# Quick Comp Sheet: [Competitor]

**In 3 bullets:**
1. [What they do well]
2. [Where we win]
3. [Key differentiator to lead with]

**If they come up, ask:**
"[Best landmine question]"

**If price comes up:**
"[TCO or value response]"

**Proof point to share:**
"[Customer/metric that shows our advantage]"
```

---

## Refresh Cadence

| Trigger | Action |
|---------|--------|
| **Monthly** | Update news, releases, pricing |
| **Before major deal** | Deep refresh on that competitor |
| **After win/loss** | Document new patterns |
| **Competitor announcement** | Immediate update |

---

## File Storage

Competitive intelligence saved to:
- `/memory/competitive-intel/[competitor-name].md`
- `/memory/competitive-intel/battlecard-matrix.md`
- `/memory/competitive-intel/updates/[YYYY-MM-DD]-[competitor].md`

---

## Best Practices

1. **Be honest** — Acknowledge competitor strengths for credibility
2. **Focus on outcomes** — "They achieve X" > "They have feature Y"
3. **Update from field** — Best intel comes from real conversations
4. **Plant landmines** — Ask questions that expose gaps, don't badmouth
5. **Track releases** — What they ship reveals strategy
6. **Quantify differences** — Use metrics and proof points
7. **Train the team** — Share intelligence broadly

---

## Related OpenClaw Skills

- **account-research** — Research specific prospects
- **call-prep** — Prepare for competitive deals
- **content-creation** — Create competitive comparison content
- **stakeholder-comms** — Communicate competitive updates

---

*Adapted from knowledge-work-plugins (sales/competitive-intelligence) for OpenClaw*
