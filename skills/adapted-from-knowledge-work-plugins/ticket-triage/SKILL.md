---
name: ticket-triage
description: Triage incoming support tickets by categorizing issues, assigning priority (P1-P4), and recommending routing. Use when a new ticket or customer issue comes in, when assessing severity, or when deciding which team should handle an issue. Adapted for OpenClaw.
---

# Ticket Triage (OpenClaw Adapted)

Rapidly categorize, prioritize, and route customer support tickets. Assess issues systematically and ensure tickets reach the right team with proper context.

## When to Use
- New support ticket arrives
- Need to assess severity of an issue
- Deciding which team should handle a problem
- Creating internal notes for handoffs

## Category Taxonomy

Assign a **primary category** (and optional secondary):

| Category | Description | Signal Words |
|----------|-------------|-------------|
| **Bug** | Product behaving incorrectly | Error, broken, crash, not working, unexpected, wrong, failing |
| **How-to** | Customer needs guidance | How do I, can I, where is, setting up, configure, help with |
| **Feature request** | Wants new capability | Would be great if, wish I could, any plans to, requesting |
| **Billing** | Payment/subscription issues | Charge, invoice, payment, subscription, refund, upgrade |
| **Account** | Access/permissions issues | Login, password, access, permission, locked out, can't sign in |
| **Integration** | Third-party/API issues | API, webhook, integration, connect, OAuth, sync, third-party |
| **Security** | Security/compliance concerns | Data breach, unauthorized, compliance, GDPR, vulnerability |
| **Data** | Data quality/import-export | Missing data, export, import, migration, incorrect data |
| **Performance** | Speed/reliability issues | Slow, timeout, latency, down, unavailable, degraded |

### Category Tips
- **Bug + Feature request** → Bug is primary
- **Can't log in due to bug** → Bug (root cause matters)
- "It used to work and now it doesn't" = **Bug**
- "I want it to work differently" = **Feature request**
- "How do I make it work?" = **How-to**
- When in doubt, choose **Bug** — better to investigate than dismiss

## Priority Framework

### 🔴 P1 — Critical
**SLA:** 1 hour response, continuous work, 1-2hr updates
- Production system down
- Data loss or corruption
- Security breach in progress
- Issue affecting all/most users
- Problem expanding in scope

### 🟠 P2 — High
**SLA:** 4 hour response, same-day investigation, 4hr updates
- Major feature broken
- Significant workflow blocked
- Multiple users affected
- No reasonable workaround
- Blocking time-sensitive work

### 🟡 P3 — Medium
**SLA:** 1 business day response, 3-day resolution/update
- Feature partially broken
- Workaround available
- Single user or small team affected
- Not blocking critical work
- Customer not escalating urgently

### 🟢 P4 — Low
**SLA:** 2 business day response, normal pace
- Minor cosmetic issues
- General questions
- Feature requests
- Issues with simple documented solutions

### Priority Escalation Triggers
Bump priority when:
- Waiting longer than SLA allows
- Multiple customers report same issue (pattern detected)
- Customer explicitly escalates or mentions executive involvement
- Workaround stops working
- Issue expands in scope (more users, more data, new symptoms)

## Routing Rules

| Route To | When |
|----------|------|
| **Tier 1** | How-to, known issues, simple billing, password resets |
| **Tier 2** | Bugs needing investigation, complex config, integrations, account issues |
| **Engineering** | Confirmed bugs needing fixes, infrastructure, performance |
| **Product** | Feature requests, design decisions, workflow gaps |
| **Security** | Data access concerns, vulnerability reports |
| **Billing/Finance** | Refunds, contract disputes, complex billing |

## How to Use

1. **Paste the ticket content** or describe the issue
2. **Include context** — when did it start, who is affected, urgency level
3. **I'll analyze** and provide:
   - Category determination
   - Priority assignment with justification
   - Routing recommendation
   - Suggested response template
   - Internal notes template

## Output Format

```markdown
# Ticket Triage Summary

## Category: [PRIMARY] / [Secondary if applicable]
**Confidence:** [High/Medium/Low]

## Priority: [P1/P2/P3/P4]
**Justification:** [Why this priority level]
**SLA Target:** [Response time]

## Routing Recommendation
**Assign to:** [Team/Individual]
**Rationale:** [Why this routing]

## Suggested Customer Response
```
[Appropriate template with placeholders filled]
```

## Internal Notes
```
[Context for next person working on this]
**Already checked:** [What you've ruled out]
**Next steps:** [What's needed]
**Pattern check:** [Any similar issues spotted]
```

## Duplicate Check
- [ ] Search by symptom/error message
- [ ] Check customer history
- [ ] Review recent related tickets
- [ ] Check known issues database

**Duplicate found?** [Y/N + link if yes]
```

## Response Templates

### Bug
```
Thank you for reporting this. I can see how [specific impact]
would be disruptive.

I've logged this as a [priority] issue and our team is
investigating. [If workaround: "In the meantime, you can [workaround]."]

I'll update you within [SLA timeframe] with what we find.
```

### How-to
```
Great question! [Direct answer or link]

[If complex: "Let me walk you through:" steps]

Let me know if that helps!
```

### Feature Request
```
Thank you for this suggestion — I can see why [capability]
would be valuable.

I've documented this for our product team. While I can't commit
to a timeline, your feedback directly informs our roadmap priorities.

[If alternative: "In the meantime, you might find [alternative] helpful."]
```

### Billing
```
I understand billing issues need prompt attention.
[straightforward resolution details]
OR
[reviewing your account now, will reply by: timeframe]
```

### Security
```
Thank you for flagging this — we take security seriously and
are reviewing immediately.

This has been escalated to our security team for investigation.
We'll follow up within [timeframe] with findings.

[If protective action needed: "In the meantime, we recommend [action]."]
```

## OpenClaw Tools Integration

When triaging, you can use these OpenClaw tools:

- `web_search` — Check for known issues, common error solutions, product documentation
- `exec` — Run scripts to check system status, query databases
- `browser` — Look up internal knowledge base, check related tickets
- `memory_search` — Recall similar past issues and their resolutions
- `write` — Save triage notes to files for team reference

## Best Practices

1. Read **full ticket** before categorizing — later context often changes assessment
2. Categorize by **root cause**, not symptom
3. When in doubt on priority, err **higher** — easier to de-escalate than recover missed SLA
4. Always **check for duplicates** before routing
5. Write internal notes that help the **next person** pick up context quickly
6. Include what you've **already checked or ruled out**
7. **Flag patterns** — seeing same issue repeatedly? Escalate the pattern

## File Storage

Triaged tickets can be saved to workspace:
- `memory/tickets/YYYY-MM-DD-[ticket-id].md`
- Pattern tracking: `memory/tickets/patterns/[issue-type].md`

---
*Adapted from knowledge-work-plugins (customer-support/ticket-triage) for OpenClaw*
