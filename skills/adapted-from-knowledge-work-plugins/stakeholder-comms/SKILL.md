---
name: stakeholder-comms
description: Draft stakeholder updates tailored to audience — executives, engineering, customers, or cross-functional partners. Use when writing status updates, reports, announcements, risk communications, or decision documentation. Adapted for OpenClaw.
---

# Stakeholder Communications (OpenClaw Adapted)

Draft clear, effective communications for diverse stakeholders. Write status updates, manage stakeholder expectations, communicate risks, and document decisions.

## When to Use
- Writing weekly status updates
- Monthly executive reports
- Launch announcements
- Risk communications
- Decision documentation
- Meeting preparation
- Cross-functional updates

## Update Templates by Audience

### Executive / Leadership Update

**What they want:** Strategic context, progress against goals, risks needing help, decisions needing input.

```markdown
**Status:** [🟢 Green / 🟡 Yellow / 🔴 Red]

**TL;DR:** [One sentence — most important thing to know]

**Progress:**
- [Outcome achieved, tied to goal/OKR]
- [Milestone reached, with impact]
- [Key metric movement]

**Risks:**
- [Risk]: [Mitigation plan]. [Ask if needed].

**Decisions needed:**
- [Decision]: [Options with recommendation]. Need by [date].

**Next milestones:**
- [Milestone] — [Date]
```

**Tips:**
- Lead with conclusion, not journey
- Keep under 200 words
- Status color = genuine assessment
- Only include risks you want help with
- Asks must be specific

### Engineering Team Update

**What they want:** Clear priorities, technical context, blockers resolved, decisions affecting work.

```markdown
**Shipped:**
- [Feature/fix] — [Link if available]. [Impact if notable].

**In progress:**
- [Item] — [Owner]. [Expected completion]. [Blockers if any].

**Decisions:**
- [Decision made]: [Rationale].
- [Decision needed]: [Context]. [Options]. [Recommendation].

**Priority changes:**
- [What changed and why]

**Coming up:**
- [Next items] — [Context on why these are next]
```

**Tips:**
- Link to specific tickets/docs when possible
- Explain why priorities changed
- Be explicit about what's blocking them
- Don't waste time with info that doesn't affect their work

### Cross-Functional Partner Update

**What they want:** What's coming that affects them, what to prepare for, how to give input.

```markdown
**What's coming:**
- [Feature/launch] — [Date]. [What this means for your team].

**What we need from you:**
- [Specific ask] — [Context]. By [date].

**Decisions made:**
- [Decision] — [How it affects your team].

**Open for input:**
- [Topic we'd love feedback on] — [How to provide it].
```

### Customer / External Update

**What they want:** What's new, what's coming, how it benefits them, how to get started.

```markdown
**What's new:**
- [Feature] — [Benefit in customer terms]. [How to use it].

**Coming soon:**
- [Feature] — [Expected timing]. [Why it matters to you].

**Known issues:**
- [Issue] — [Status]. [Workaround if available].

**Feedback:**
- [How to share feedback or request features]
```

**Tips:**
- No internal jargon, ticket numbers, or technical details
- Frame in terms of what customer can DO
- Be honest but don't overcommit
- Only mention known issues with resolution plan

## Status Reporting Framework

### Green / Yellow / Red Status

**🟢 Green** (On Track):
- Progressing as planned
- No significant risks or blockers
- On track to meet commitments
- Use when genuinely going well — not as default

**🟡 Yellow** (At Risk):
- Progress slower than planned, or risk materialized
- Mitigation underway but outcome uncertain
- May miss commitments without intervention
- Use proactively — earlier = more options

**🔴 Red** (Off Track):
- Significantly behind plan
- Major blocker without clear mitigation
- Will miss commitments without significant intervention
- Use when you genuinely need help

### When to Change Status
- Move to Yellow at FIRST sign of risk
- Move to Red when you've exhausted own options
- Move to Green only when risk genuinely resolved
- Document what changed: "Moved to Yellow because [reason]"

## Risk Communication

### ROAM Framework

- **Resolved**: No longer a concern. Document how.
- **Owned**: Someone actively managing it. State owner and plan.
- **Accepted**: Choosing to proceed without mitigation. Document rationale.
- **Mitigated**: Actions reduced risk to acceptable level. Document what was done.

### Communicating Risks Effectively

1. **State clearly**: "Risk that [thing] happens because [reason]"
2. **Quantify impact**: "If this happens, consequence is [impact]"
3. **State likelihood**: "[likely/possible/unlikely] because [evidence]"
4. **Present mitigation**: "Managing this by [actions]"
5. **Make the ask**: "Need [specific help] to further reduce risk"

### Common Mistakes
❌ Burying risks in good news
❌ Being vague: "might be delays" — specify what, how long, why
❌ Presenting risks without mitigations
❌ Waiting too long (early = planning input, late = fire drill)

## Decision Documentation

### Decision Record Format

```markdown
# [Decision Title]

## Status
[Proposed / Accepted / Deprecated / Superseded]

## Context
What situation requires decision? What forces at play?

## Decision
What did we decide? State clearly and directly.

## Consequences
**Positive:**
- [Positive consequence]

**Negative / Tradeoffs:**
- [Tradeoff accepted]

**Future implications:**
- [What this enables or prevents]

## Alternatives Considered
- [Option 1]: [What was it, why rejected]
- [Option 2]: [What was it, why rejected]
```

### When to Document Decisions

- Strategic product decisions
- Significant technical decisions
- Controversial decisions where people disagreed
- Decisions constraining future options
- Decisions you expect people to question later

### Tips
- Write close to when decision is made
- Include who was involved and who made final call
- Document context generously
- OK to document wrong decisions — add "superseded by" link
- Keep short (one page better than five)

## File Storage

Stakeholder communications can be saved to:
- `/memory/stakeholder-updates/YYYY-MM-DD-[audience].md`
- `/memory/decisions/[decision-topic].md`
- `/memory/risks/[risk-area].md`

## Using This Skill

**What to provide:**
1. **Audience** — Who is this for?
2. **Context** — What happened, what's the status
3. **Purpose** — Update, announce, document decision, communicate risk
4. **Key points** — What must be included

**What I'll provide:**
1. **Tailored draft** — Using appropriate template for audience
2. **Tone guidance** — How formal, how much detail
3. **Structure** — Organized for easy scanning
4. **Recommendations** — What to emphasize or omit

## Best Practices

1. **Know your audience** — Execs ≠ Engineers ≠ Customers
2. **Lead with conclusion** — Say the important thing first
3. **Be specific** — Avoid vague "delays" or "issues"
4. **Show don't tell** — "Shipped X, moved Y metric" not "made progress"
5. **Flag risks early** — Yellow is good risk management
6. **Document decisions** — While context is fresh
7. **Keep it scannable** — Bullets, headers, white space

## Related OpenClaw Skills

- **roadmap-management** — Communicate roadmap changes
- **escalation** — Escalate with business context
- **feature-spec** — Document product decisions
- **note-taking** — Capture stakeholder meetings

---
*Adapted from knowledge-work-plugins (product-management/stakeholder-comms) for OpenClaw*
