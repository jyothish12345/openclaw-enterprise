---
name: cowork-plugin-customizer
description: Manage and customize OpenClaw skills and plugins. Use when modifying existing skills, creating new skill variants, or managing skill configurations. Adapted for OpenClaw.
---

# Skill & Plugin Manager (OpenClaw Adapted)

Manage, customize, and extend OpenClaw skills.

## When to Use
- Modifying existing skill behavior
- Creating new skill variants
- Managing skill configurations
- Developing custom skills
- Inspecting installed skills

## Skill Customization Framework

### 1. Skill Structure (SKILL.md)
- **Metadata:** `name`, `description` (YAML frontmatter)
- **Documentation:** Markdown body (Usage, Templates, Examples)
- **Tools:** Implicitly defined by instructions (e.g., "Use `web_search` to...")

### 2. Customization Workflow

**Modify Existing Skill:**
1. **Read:** `read /path/to/SKILL.md`
2. **Edit:** `edit /path/to/SKILL.md` (Update prompt logic, templates)
3. **Reload:** Skills are re-read on next use.

**Create New Skill:**
1. **Define:** Name, Description, Tools needed.
2. **Draft:** Create `SKILL.md` with instructions.
3. **Save:** Write to `/Users/joy/.openclaw/workspace/skills/custom/[skill-name]/SKILL.md`.
4. **Register:** (Automatic if in skills path).

### 3. Configuration Management

**Skill-Specific Configs:**
- Use JSON/YAML files in skill directory for parameters.
- Example: `config.json` for API keys, default settings.

**Environment Variables:**
- Use `.env` or system env vars for secrets.

## Skill Template

```markdown
---
name: [skill-name]
description: [Action verb] [Object] using [Tools]. Use when [Trigger condition].
---

# [Skill Name]

[Short description of what the skill does.]

## When to Use
- [Scenario 1]
- [Scenario 2]

## Workflow
1. [Step 1]
2. [Step 2]

## Templates
[Provide templates for output]

## File Storage
[Define where to save artifacts]
```

## Maintenance Tasks

- **Audit:** Check for outdated skills or broken links.
- **Update:** Refresh prompts based on new model capabilities.
- **Prune:** Remove unused skills to reduce cognitive load.
- **Backup:** Copy skills folder to safe location.

## Using with OpenClaw

**Workflow:**
1. Inspect skill list: `exec ls -R skills/`
2. Read skill to modify.
3. Apply changes via `edit` or `write`.
4. Test skill with sample input.

## File Storage
`/Users/joy/.openclaw/workspace/skills/custom/`

---
*Adapted from knowledge-work-plugins (cowork-plugin-management/cowork-plugin-customizer) for OpenClaw*
