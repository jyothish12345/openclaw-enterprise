---
name: escalation
description: Structure and package support escalations with full context, reproduction steps, and business impact. Use when an issue needs to go beyond support, writing an escalation brief, or assessing whether to escalate. Adapted for OpenClaw.
---

# Escalation Management (OpenClaw Adapted)

Determine when and how to escalate support issues. Structure escalation briefs that give receiving teams everything they need to act quickly.

## When to Escalate vs. Handle in Support

### Handle in Support When:
- Issue has documented solution or known workaround
- It's a configuration or setup issue you can resolve
- Customer needs guidance or training, not a fix
- Issue is known limitation with documented alternative
- Previous similar tickets were resolved at support level

### Escalate When:

**Technical:**
- Bug confirmed and needs code fix
- Infrastructure investigation needed
- Data corruption or loss
- System-level issue beyond support access

**Complexity:**
- Issue beyond support's ability to diagnose
- Requires access support doesn't have
- Involves custom implementation

**Impact:**
- Multiple customers affected
- Production system down
- Data integrity at risk
- Security concern

**Business:**
- High-value customer at risk
- SLA breach imminent or occurred
- Customer requesting executive involvement

**Time:**
- Issue open beyond SLA
- Customer waiting unreasonably long
- Normal channels not progressing

**Pattern:**
- Same issue reported by 3+ customers
- Recurring issue supposedly fixed
- Increasing severity over time

## Escalation Tiers

### L1 → L2 (Support Escalation)
**From:** Frontline support
**To:** Senior support / technical specialists
**When:** Requires deeper investigation, specialized knowledge, advanced troubleshooting
**Include:** Ticket summary, steps tried, customer context

### L2 → Engineering
**From:** Senior support
**To:** Engineering team
**When:** Confirmed bug, infrastructure issue, needs code change, requires system-level investigation
**Include:** Full reproduction steps, environment details, logs, business impact, timeline

### L2 → Product
**From:** Senior support
**To:** Product management
**When:** Feature gap causing pain, design decision needed, workflow mismatch, competing customer needs
**Include:** Customer use case, business impact, frequency of request, competitive pressure

### Any → Security
**From:** Any support tier
**To:** Security team
**When:** Potential data exposure, unauthorized access, vulnerability report, compliance concern
**Include:** What was observed, who/what affected, containment steps taken, urgency
**Note:** Security escalations bypass normal tier progression — escalate immediately

### Any → Leadership
**From:** Any tier (usually L2 or manager)
**To:** Support leadership, executive team
**When:** High-revenue customer threatening churn, SLA breach on critical account, cross-functional decision needed, policy exception required, PR/legal risk
**Include:** Full business context, revenue at risk, what's been tried, specific decision needed, deadline

## Structured Escalation Format

```markdown
# ESCALATION: [One-line summary]

**Severity:** [Critical / High / Medium]
**Target:** [Engineering / Product / Security / Leadership]
**Date:** [YYYY-MM-DD]
**Escalated By:** [Your Name]

---

## IMPACT

- **Customers affected:** [Number and names if relevant]
- **Workflow impact:** [What's broken for them]
- **Revenue at risk:** [If applicable — $XXk ARR]
- **SLA status:** [Within SLA / At risk / Breached]

---

## ISSUE DESCRIPTION

[3-5 sentences: what's happening, when it started, how it manifests, scope of impact]

---

## REPRODUCTION STEPS (for bugs)

**Environment:**
- Product version: [Version]
- Browser/OS: [Details]
- Account type: [Plan level, features enabled]

**Steps:**
1. [Step]
2. [Step]
3. [Step]

**Expected:** [X]
**Actual:** [Y]

**Frequency:** [Always / Intermittent / Under specific conditions]

---

## WHAT'S BEEN TRIED

1. [Action] → [Result]
2. [Action] → [Result]
3. [Action] → [Result]

**Ruled out:**
- [What's been eliminated as cause]

---

## CUSTOMER COMMUNICATION

- **Last update:** [Date — what was said]
- **Customer expectation:** [What they expect and by when]
- **Escalation risk:** [Will they escalate further? To whom?]

---

## WHAT'S NEEDED

**Specific ask:** [Investigate / Fix / Decide / Approve]
**Deadline:** [Date/time — why this deadline]

---

## SUPPORTING CONTEXT

- **Ticket links:** [URLs or IDs]
- **Logs/screenshots:** [Attachments or links]
- **Related issues:** [Similar past issues]
- **Internal threads:** [Discussion links if any]

---

## BUSINESS CONTEXT

- **Customer:** [Company name]
- **ARR:** [$XXk]
- **Plan:** [Plan level]
- **Renewal date:** [If relevant]
- **Stakeholder:** [Key contact, title]
```

## Business Impact Assessment

Quantify impact where possible:

### Impact Dimensions

| Dimension | Questions to Answer |
|-----------|-------------------|
| **Breadth** | How many customers/users affected? Is it growing? |
| **Depth** | How severely impacted? Blocked vs. inconvenienced? |
| **Duration** | How long ongoing? How long until critical? |
| **Revenue** | What ARR at risk? Pending deals affected? |
| **Reputation** | Could this become public? Reference customer? |
| **Contractual** | SLAs being breached? Contractual obligations? |

### Severity Shorthand

**Critical:**
- Production down
- Data at risk
- Security breach
- Multiple high-value customers affected
- **Needs:** Immediate attention

**High:**
- Major functionality broken
- Key customer blocked
- SLA at risk
- **Needs:** Same-day attention

**Medium:**
- Significant issue with workaround
- Important but not urgent business impact
- **Needs:** Attention this week

## Writing Reproduction Steps

Good reproduction steps are the single most valuable thing in a bug escalation.

### Best Practices:

1. **Start from clean state** — Describe starting point (account type, config, permissions)
2. **Be specific** — "Click Export button in top-right of Dashboard" not "try to export"
3. **Include exact values** — Use specific inputs, dates, IDs — not "enter some data"
4. **Note the environment** — Browser, OS, account type, feature flags, plan level
5. **Capture frequency** — Always? Intermittent? Only under certain conditions?
6. **Include evidence** — Screenshots, error messages (exact text), network logs, console output
7. **Note what's ruled out** — "Tested in Chrome and Firefox — same behavior"

## Follow-up Cadence After Escalation

Don't escalate and forget. Maintain ownership of customer relationship.

| Severity | Internal Follow-up | Customer Update |
|----------|-------------------|-----------------|
| **Critical** | Every 2 hours | Every 2-4 hours (or per SLA) |
| **High** | Every 4 hours | Every 4-8 hours |
| **Medium** | Daily | Every 1-2 business days |

### Follow-up Actions:
- Check with receiving team for progress
- Update customer even if no new information
- Adjust severity if situation changes
- Document all updates in ticket
- Close loop when resolved

## De-escalation

Not every escalation stays escalated. De-escalate when:
- Root cause found and it's support-resolvable
- Workaround found that unblocks customer
- Issue resolves itself (but document root cause)
- New information changes severity assessment

**When de-escalating:**
- Notify team you escalated to
- Update ticket with resolution
- Inform customer of resolution
- Document what was learned

## File Storage

Escalation briefs can be saved to:
- `/memory/escalations/YYYY-MM-DD-[customer-issue].md`
- `/memory/tickets/[ticket-id]-escalation.md`

## Using This Skill

**What to provide:**
1. **Issue description** — What's happening
2. **Customer context** — Who's affected, revenue impact
3. **What's been tried** — Troubleshooting done
4. **Urgency** — Why now, deadline

**What I'll provide:**
1. **Structured escalation brief** — Following the template
2. **Severity assessment** — Critical/High/Medium with justification
3. **Routing recommendation** — Which team should receive
4. **Follow-up plan** — How to maintain customer relationship

## Best Practices

1. **Always quantify impact** — Vague escalations get deprioritized
2. **Include reproduction steps for bugs** — #1 thing engineering needs
3. **Be clear about what you need** — "investigate" vs. "fix" vs. "decide"
4. **Set and communicate deadline** — Urgency without deadline is ambiguous
5. **Maintain ownership** — Even after escalating technical issue
6. **Follow up proactively** — Don't wait for receiving team
7. **Document everything** — Escalation trail valuable for pattern detection

## Related OpenClaw Skills

- **ticket-triage** — Categorize before escalating
- **response-drafting** — Communicate with customer during escalation
- **customer-research** — Research context before escalating
- **note-taking** — Document escalation progress

---
*Adapted from knowledge-work-plugins (customer-support/escalation) for OpenClaw*
