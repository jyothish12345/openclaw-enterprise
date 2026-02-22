---
name: canned-responses
description: Create pre-approved legal responses for common questions and requests. Ensure consistency and compliance in routine legal communications. Adapted for OpenClaw.
---

# Legal Canned Responses (OpenClaw Adapted)

Maintain library of pre-approved legal responses.

## Canned Response Library Template

```markdown
# Legal Canned Responses Library

---

## Category: NDA Requests

### Response: Standard NDA Available

**Use when:** Customer requests NDA

**Response:**
"Thank you for your interest in entering into an NDA with [Company]. We have a standard mutual NDA template that has been reviewed by our legal team. 

You can find it here: [link]

If you prefer to use your template, please send it to legal@company.com for review. Our typical review time is 3-5 business days.

Please let me know if you have any questions."

---

### Response: NDA Already in Place

**Use when:** Customer asks for NDA but one exists

**Response:**
"We have an existing NDA in place between our companies, executed on [Date]. I'm happy to send you a copy if needed. Please confirm if this covers your intended use case or if you need a separate agreement."

---

## Category: Contract Questions

### Response: Payment Terms Explanation

**Use when:** Customer asks about payment terms

**Response:**
"Our standard payment terms are Net 30 from invoice date. Invoices are sent [frequency]. We accept payment via [methods].

If you require different terms, please let us know and we can discuss options."

---

## Category: Data/Privacy

### Response: GDPR Compliance

**Use when:** EU customer asks about GDPR compliance

**Response:**
"Yes, [Company] is GDPR compliant. We have:
- A Data Processing Agreement (DPA) available
- Privacy Policy outlining data handling practices
- Technical and organizational security measures in place

Our DPA is available at: [link]

Would you like to schedule a call to discuss our privacy practices in detail?"

---

## Category: Intellectual Property

### Response: IP Ownership Question

**Use when:** Customer asks who owns deliverables

**Response:**
"Under our standard terms, [specify ownership arrangement, e.g., 'you retain ownership of your pre-existing IP, we retain ownership of our pre-existing tools and methodologies, and deliverables created specifically for you become your property upon full payment'].

If you need different IP terms, please let us know and we can discuss."
```

## Creating New Canned Responses

```markdown
## New Response: [Title]

**Category:** [Category]
**Use when:** [Trigger/scenario]
**Legal review:** [ ] Pending [ ] Approved by [Name] on [Date]

**Response:**
[Draft response text]

**Notes:**
- [Any conditions or caveats]
- [When NOT to use this response]
```

## File Storage
`/memory/legal/canned-responses/library.md`

---

*Adapted for OpenClaw*
