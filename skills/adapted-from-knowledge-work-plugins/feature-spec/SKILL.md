---
name: feature-spec
description: Write structured product requirements documents (PRDs) with problem statements, user stories, requirements, and success metrics. Use when speccing a new feature, writing a PRD, defining acceptance criteria, or documenting product decisions. Adapted for OpenClaw.
---

# Feature Spec / PRD Writing (OpenClaw Adapted)

Write structured product requirements documents (PRDs) and feature specifications. Define what to build, why, and how to measure success.

## When to Use
- Speccing a new feature
- Writing a PRD (Product Requirements Document)
- Defining acceptance criteria
- Prioritizing requirements
- Documenting product decisions
- Creating technical specs

## Trigger Phrases
- "Write a PRD for [feature]"
- "Spec out [feature idea]"
- "Create feature spec for [capability]"
- "Document requirements for [project]"

## PRD Template Structure

### 1. Problem Statement
**What to include:**
- Describe user problem in 2-3 sentences
- Who experiences this and how often
- Cost of not solving (user pain, business impact, competitive risk)
- Ground in evidence (user research, support data, metrics, feedback)

**Questions to answer:**
- What problem are we solving?
- Who has this problem?
- How painful is it?
- Why now?

### 2. Goals
**What to include:**
- 3-5 specific, measurable outcomes
- User goals (what users get)
- Business goals (what company gets)
- Outcomes, not outputs

**Format:**
- Each goal answers: "How will we know this succeeded?"
- Example: "Reduce time to first value by 50%" (not "build onboarding wizard")

### 3. Non-Goals
**What to include:**
- 3-5 things this feature will NOT do
- Adjacent capabilities out of scope
- Why each is out of scope

**Purpose:**
- Prevent scope creep
- Set stakeholder expectations
- Focus the team

### 4. User Stories
**Format:**
```
As a [user type],
I want [capability]
so that [benefit]
```

**Guidelines:**
- User type should be specific ("enterprise admin" not just "user")
- Capability describes what they want to accomplish (not how)
- Benefit explains the "why"
- Include edge cases, error states, empty states
- Include different user types if multi-persona
- Order by priority

**Good example:**
```
As a team admin,
I want to configure SSO for my organization
so that my team members can log in with their corporate credentials
```

### 5. Requirements

**Must-Have (P0):**
- Feature cannot ship without these
- Minimum viable version
- Test: "If we cut this, does it still solve the core problem?"

**Nice-to-Have (P1):**
- Significantly improves experience
- Core use case works without them
- Often become fast follow-ups

**Future Considerations (P2):**
- Out of scope for v1
- Design should support them later
- Prevents accidental architectural decisions

**For each requirement:**
- Clear, unambiguous description
- Acceptance criteria
- Technical considerations/constraints
- Dependencies on other teams/systems

### 6. Success Metrics

**Leading Indicators** (days to weeks):
- Adoption rate: % of eligible users who try
- Activation rate: % who complete core action
- Task completion rate: % who accomplish goal
- Time to complete: Duration of core workflow
- Error rate: Frequency of errors/dead ends
- Feature usage frequency: Return rate

**Lagging Indicators** (weeks to months):
- Retention impact
- Revenue impact
- NPS/satisfaction change
- Support ticket reduction
- Competitive win rate

**Setting Targets:**
- Be specific: "50% adoption within 30 days"
- Base on comparable features, industry benchmarks, or hypotheses
- Set "success" threshold and "stretch" target
- Define measurement method
- Specify when to evaluate

### 7. Open Questions
**Include:**
- Questions needing answers before/during implementation
- Tag who should answer (engineering, design, legal, data)
- Distinguish blocking vs. non-blocking

### 8. Timeline Considerations
**Include:**
- Hard deadlines (contractual, events, compliance)
- Dependencies on other teams' work
- Suggested phasing if too large for one release

## Complete PRD Template

```markdown
# [Feature Name] PRD

**Author:** [Name]
**Date:** [YYYY-MM-DD]
**Status:** [Draft / Review / Approved]
**Target Release:** [Version/Date]

---

## Problem Statement

[2-3 sentences describing the user problem]

**Who:** [Who experiences this problem]
**Frequency:** [How often this comes up]
**Cost:** [User pain, business impact, competitive risk]
**Evidence:** [User research, support data, metrics, feedback]

---

## Goals

### User Goals
1. [Specific measurable outcome for users]
2. [Specific measurable outcome for users]
3. [Specific measurable outcome for users]

### Business Goals
1. [Specific measurable outcome for business]
2. [Specific measurable outcome for business]

---

## Non-Goals

1. [What we're NOT doing] — [Why it's out of scope]
2. [What we're NOT doing] — [Why it's out of scope]
3. [What we're NOT doing] — [Why it's out of scope]

---

## User Stories

### Primary Flow
- As a [user type], I want [capability] so that [benefit]
- As a [user type], I want [capability] so that [benefit]
- As a [user type], I want [capability] so that [benefit]

### Edge Cases
- As a [user type], I want [capability] so that [benefit]
- As a [user type], I want [capability] so that [benefit]

---

## Requirements

### Must-Have (P0)
- [ ] [Requirement] — [Acceptance criteria]
- [ ] [Requirement] — [Acceptance criteria]
- [ ] [Requirement] — [Acceptance criteria]

### Nice-to-Have (P1)
- [ ] [Requirement] — [Acceptance criteria]
- [ ] [Requirement] — [Acceptance criteria]

### Future Considerations (P2)
- [ ] [Capability for future] — [Why we're noting it]

---

## Acceptance Criteria

### [Feature Component 1]
**Given** [precondition]
**When** [action]
**Then** [expected outcome]

**Checklist:**
- [ ] [Specific testable criterion]
- [ ] [Specific testable criterion]
- [ ] [Specific testable criterion]

### [Feature Component 2]
[Same structure]

---

## Success Metrics

### Leading Indicators (Measure at 1 week, 1 month)
| Metric | Target | Stretch | How Measured |
|--------|--------|---------|--------------|
| Adoption rate | 30% | 50% | [Method] |
| Task completion | 80% | 90% | [Method] |
| Time to complete | <2 min | <1 min | [Method] |

### Lagging Indicators (Measure at 3 months)
| Metric | Target | How Measured |
|--------|--------|--------------|
| Retention lift | +5% | [Method] |
| NPS change | +10 pts | [Method] |

---

## Open Questions

**Blocking:**
- [ ] [Question] — **Owner:** [Name]
- [ ] [Question] — **Owner:** [Name]

**Non-Blocking:**
- [ ] [Question] — **Owner:** [Name]

---

## Timeline

**Hard Deadlines:**
- [Date]: [Reason for deadline]

**Dependencies:**
- [Team/System]: [What's needed and when]

**Suggested Phasing:**
- **Phase 1** (v1.0): [Scope]
- **Phase 2** (v1.1): [Scope]

---

## Technical Considerations

[Any technical constraints, architecture notes, or implementation guidance]

---

## Design Mockups

[Link to designs or embed if available]

---

## Risks & Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| [Risk] | [H/M/L] | [H/M/L] | [Plan] |

---

## Stakeholders

| Name | Role | Involvement |
|------|------|-------------|
| [Name] | [Title] | [Reviewer / Approver / Informed] |

---

## Revision History

| Date | Version | Changes | Author |
|------|---------|---------|--------|
| [Date] | 0.1 | Initial draft | [Name] |
```

---

## Writing Good User Stories (INVEST Criteria)

- **Independent:** Can be developed on its own
- **Negotiable:** Details can be discussed
- **Valuable:** Delivers value to the user
- **Estimable:** Team can estimate effort
- **Small:** Can complete in one sprint
- **Testable:** Clear way to verify it works

### Common Mistakes

❌ **Too vague:** "As a user, I want the product to be faster"
✅ **Specific:** "As a user, I want search results to load in under 2 seconds"

❌ **Solution-prescriptive:** "As a user, I want a dropdown menu"
✅ **Need-focused:** "As a user, I want to select from multiple options easily"

❌ **No benefit:** "As a user, I want to click a button"
✅ **With benefit:** "As a user, I want to save my progress so I don't lose work"

❌ **Too large:** "As a user, I want to manage my team"
✅ **Specific:** "As an admin, I want to invite team members by email"

---

## MoSCoW Prioritization Framework

- **Must have:** Without these, feature is not viable
- **Should have:** Important but not critical for launch
- **Could have:** Desirable if time permits
- **Won't have (this time):** Explicitly out of scope

**Tips:**
- Be ruthless about P0s
- If everything is P0, nothing is P0
- Challenge every must-have
- P1s should be things you'll build soon
- P2s guide design decisions

---

## Scope Management

### Recognizing Scope Creep
- Requirements keep getting added post-approval
- "Small" additions accumulate
- Building features no user asked for
- Launch date keeps moving
- Stakeholders add without removing anything

### Preventing Scope Creep
- Write explicit non-goals
- Require scope addition = scope removal or timeline extension
- Separate "v1" from "v2" clearly
- Review against original problem statement
- Time-box investigations
- Create "parking lot" for good ideas not in scope

---

## File Storage

PRDs can be saved to:
- `/Users/joy/.openclaw/workspace/memory/specs/[feature-name]-prd.md`
- `/Users/joy/.openclaw/workspace/memory/projects/[project]/spec.md`

---

## Using This Skill

**What to provide:**
1. **Feature idea** — What you want to spec
2. **Context** — Why this is important now
3. **Target users** — Who this is for
4. **Any constraints** — Technical, timeline, resource

**What I'll provide:**
1. **Structured PRD** — Following the template
2. **User stories** — Properly formatted
3. **Acceptance criteria** — Testable and clear
4. **Success metrics** — Measurable outcomes
5. **Questions to answer** — What needs clarification

---

## Best Practices

1. **Lead with the problem** — Always start with why
2. **Be specific** — Avoid "fast", "easy", "intuitive"
3. **Make it measurable** — Every goal should have metrics
4. **Include non-goals** — Prevent scope creep
5. **Write for the reader** — Engineers, designers, stakeholders
6. **Update as you learn** — PRDs are living documents
7. **Keep it concise** — Every section should earn its place

---

## Related OpenClaw Skills

- **note-taking** — Capture research and decisions
- **task-management** — Track spec-related tasks
- **account-research** — Research competitive features
- **customer-research** — Validate problem with user feedback

---

*Adapted from knowledge-work-plugins (product-management/feature-spec) for OpenClaw*
