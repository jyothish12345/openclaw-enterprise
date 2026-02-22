---
name: nda-triage
description: Quickly review and triage NDA requests. Determine if standard NDA applies or if custom review is needed. Adapted for OpenClaw.
---

# NDA Triage (OpenClaw Adapted)

Quickly triage NDA requests.

## NDA Triage Checklist

```markdown
# NDA Triage: [Counterparty Name]

**Date:** [YYYY-MM-DD]
**Reviewer:** [Name]
**Requestor:** [Internal person requesting NDA]

---

## Initial Assessment

**NDA Type:**
- [ ] Mutual (both parties share confidential info)
- [ ] One-way (only we share / only they share)

**Purpose:**
[Brief description of why NDA is needed]

**Urgency:**
- [ ] High (deal-blocking, needed within 48hrs)
- [ ] Medium (needed within 1 week)
- [ ] Low (no specific deadline)

---

## Triage Decision

### ✅ Use Standard NDA
- [ ] Standard business relationship
- [ ] No special terms requested
- [ ] Mutual NDA appropriate
- [ ] No unusual risk factors

**Action:** Send standard NDA template
**Template:** [Link to standard NDA]

### ⚠️ Minor Modifications Needed
- [ ] Small change to standard (e.g., term length, jurisdiction)
- [ ] Pre-approved modification

**Action:** Use modified template
**Changes:** [List changes]

### 🔴 Full Legal Review Required
- [ ] Customer provided their own NDA
- [ ] Unusual terms requested
- [ ] High-value deal or sensitive information
- [ ] Non-standard provisions

**Action:** Send to legal for review
**Priority:** [High / Medium / Low]
**Notes for legal:** [Context and concerns]

---

## Quick Review (If customer template provided)

**Red Flags Found:**
- [ ] Unlimited liability
- [ ] No liability cap
- [ ] Perpetual confidentiality term
- [ ] Broad indemnification
- [ ] IP assignment provisions
- [ ] Non-compete or non-solicit clauses
- [ ] Unusual jurisdiction/governing law

**Decision:**
- [ ] Approve with standard
- [ ] Request modifications
- [ ] Full legal review needed
```

## File Storage
`/memory/legal/nda-triage/[counterparty-name].md`

---

*Adapted for OpenClaw*
