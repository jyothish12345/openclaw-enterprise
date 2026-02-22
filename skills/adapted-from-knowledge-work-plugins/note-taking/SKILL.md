---
name: note-taking
description: Capture, organize, and structure notes effectively. Use during meetings, research, or brainstorming to create durable, searchable notes. Works with write and memory tools in OpenClaw. Adapted for OpenClaw.
---

# Note Taking Skill (OpenClaw Adapted)

Capture thoughts, meeting notes, research findings, and ideas in an organized, searchable format.

## When to Use
- During meetings to capture key points
- Research findings you want to save
- Brainstorming sessions
- Project planning
- Decision documentation
- Action item tracking

## Trigger Phrases
- "Take notes on this"
- "Save these notes"
- "Document this meeting"
- "Create notes for [topic]"
- "Write this down"

## How It Works

1. **You share** information (paste text, describe a meeting, share research)
2. **I structure** it into organized notes
3. **I save** to workspace if you want durable storage

## Note Templates

### Meeting Notes

```markdown
# Meeting: [Title] | [Date]

**Attendees:** [Names]
**Type:** [Standup / Planning / Discovery / Retro / etc.]
**Duration:** [Time]

---

## Agenda / Topics

1. **[Topic 1]**
2. **[Topic 2]**
3. **[Topic 3]**

---

## Key Discussion Points

### [Topic 1]
- **[Point]:** [Details]
- **[Point]:** [Details]
- [Additional context]

### [Topic 2]
- **[Point]:** [Details]
- **[Point]:** [Details]

---

## Decisions Made

| Decision | Rationale | Owner |
|----------|-----------|-------|
| [What was decided] | [Why] | [Who] |
| [What was decided] | [Why] | [Who] |

---

## Action Items

| Task | Owner | Due Date | Status |
|------|-------|----------|--------|
| [Task] | [Name] | [Date] | ⬜ |
| [Task] | [Name] | [Date] | ⬜ |

---

## Follow-ups

- [ ] [Follow-up item 1]
- [ ] [Follow-up item 2]

---

## Notes / Context

[Any additional observations, background, or context that might be useful later]
```

### Research Notes

```markdown
# Research: [Topic] | [Date]

**Source:** [Where did this info come from]
**Researcher:** [You / Who gathered this]

---

## Summary

[2-3 sentence overview of findings]

---

## Key Findings

### [Finding Category 1]
- **[Point]:** [Details]
  - Evidence: [Quote/link]
  - Confidence: [High/Medium/Low]

### [Finding Category 2]
- **[Point]:** [Details]
  - Evidence: [Quote/link]
  - Confidence: [High/Medium/Low]

---

## Sources

| Source | URL | Accessed | Reliability |
|--------|-----|----------|-------------|
| [Name] | [URL] | [Date] | [High/Med/Low] |
| [Name] | [URL] | [Date] | [High/Med/Low] |

---

## Questions Remaining

- [Question 1]
- [Question 2]

---

## Related Notes

- [Link to related note 1]
- [Link to related note 2]
```

### Brainstorm Notes

```markdown
# Brainstorm: [Topic] | [Date]

**Participants:** [If any]
**Goal:** [What are we trying to solve/create]

---

## Ideas Generated

### 💡 [Idea 1]
**Concept:** [Brief description]
**Pros:**
- [Pro 1]
- [Pro 2]

**Cons:**
- [Con 1]
- [Con 2]

**Effort:** [High/Medium/Low]
**Impact:** [High/Medium/Low]

---

### 💡 [Idea 2]
[Same structure]

---

## Themes / Patterns

- [Theme 1]: [Observations]
- [Theme 2]: [Observations]

---

## Next Steps

- [ ] [Action item 1]
- [ ] [Action item 2]

---

## Parking Lot

[Ideas to revisit later, loose threads, etc.]
```

### Project Notes

```markdown
# Project: [Name] | [Date]

**Status:** [Planning / In Progress / Blocked / Complete]
**Owner:** [Name]
**Priority:** [High/Medium/Low]

---

## Objective

[What we're trying to achieve]

---

## Scope

**In Scope:**
- [Item 1]
- [Item 2]

**Out of Scope:**
- [Item 1]
- [Item 2]

---

## Timeline

| Milestone | Target Date | Status |
|-----------|-------------|--------|
| [Milestone 1] | [Date] | [Status] |
| [Milestone 2] | [Date] | [Status] |

---

## Resources

| Resource | Owner | Notes |
|----------|-------|-------|
| [Resource 1] | [Owner] | [Notes] |
| [Resource 2] | [Owner] | [Notes] |

---

## Risks / Blockers

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| [Risk 1] | [H/M/L] | [H/M/L] | [Plan] |
| [Risk 2] | [H/M/L] | [H/M/L] | [Plan] |

---

## Decisions Log

| Date | Decision | Made By | Rationale |
|------|----------|---------|-----------|
| [Date] | [Decision] | [Who] | [Why] |
| [Date] | [Decision] | [Who] | [Why] |

---

## Updates Log

| Date | What Changed | Who |
|------|--------------|-----|
| [Date] | [Update] | [Name] |
| [Date] | [Update] | [Name] |
```

## Using with OpenClaw Tools

### Creating Notes

I can save notes to your workspace:

```
write: → /Users/joy/.openclaw/workspace/memory/notes/YYYY-MM-DD-[topic].md
```

### Retrieving Notes

Find previous notes:

```
memory_search: "query about topic"
exec: ls -la /Users/joy/.openclaw/workspace/memory/notes/
```

### Linking Notes

Notes can reference each other:
```markdown
## Related Notes
- [Project kickoff](2026-02-10-project-kickoff.md)
- [Research findings](2026-02-11-research-topic.md)
```

## Storage Structure

Notes are organized in workspace:

```
/Users/joy/.openclaw/workspace/memory/
├── notes/
│   ├── meetings/
│   ├── research/
│   ├── brainstorms/
│   └── projects/
└── briefings/
└── tickets/
```

## Note-Taking Best Practices

1. **Be consistent** — Use same template for same note types
2. **Tag for search** — Include keywords in titles/headers
3. **Link related notes** — Connect related information
4. **Review regularly** — Notes are only useful if you revisit them
5. **Keep action items visible** — Always have clear next steps

## File Naming Convention

```
YYYY-MM-DD-[type]-[topic].md

Examples:
2026-02-13-meeting-sprint-planning.md
2026-02-13-research-competitor-analysis.md
2026-02-13-brainstorm-product-features.md
```

## Quick Capture Mode

Don't want full structure? Just say "quick notes":

**Input:**
"Quick notes on our call"

**Output (simplified):**
```markdown
# Quick Notes | 2026-02-13

## Call with [Name]

**Key points:**
- [Point 1]
- [Point 2]

**To do:**
- [ ] [Action]
- [ ] [Action]
```

---
*Adapted from knowledge-work-plugins for OpenClaw*
