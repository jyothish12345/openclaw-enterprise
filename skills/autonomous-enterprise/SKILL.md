---
name: autonomous-enterprise
description: A meta-skill that transforms OpenClaw into a self-running corporate entity with specialized C-Suite sub-agents and self-evolution capabilities.
metadata: {"clawdbot":{"emoji":"🏢","requires":{"bins":["openclaw","git","node"]}}}
---

# Autonomous Enterprise Skill

This skill allows an agent to bootstrap and manage a multi-division AI organization. It handles sub-agent spawning, heartbeat orchestration, and autonomous product lifecycles.

## Core Capabilities

1. **Bootstrap**: Create the 7-division C-Suite (Sales, Dev, Finance, Creative, Ops, Marketing, Support).
2. **Orchestrate**: Manage the inter-agent handshake and lead-to-code pipeline.
3. **Self-Evolve**: Analyze operational logs to update agent charters and heartbeats for better performance.
4. **Market Mesh**: Visual lead generation across 5+ platforms without relying on restricted APIs.

## Commands

```bash
# Initialize the enterprise hierarchy
./skills/autonomous-enterprise/bin/setup.sh --workspace ~/my-enterprise

# Run a post-mortem and evolve agent logic
./skills/autonomous-enterprise/bin/evolve.js --session <sessionId>

# Check enterprise health
./scripts/enterprise_status.sh
```

## The C-Suite

- **CEO (Main)**: Orchestrator.
- **Sales-Analyst**: Lead discovery (Visual Mesh).
- **Finance-Division**: ROI and billing (Stripe/Stock).
- **Creative-Division**: UI/UX and visual assets (ComfyUI).
- **Dev-Division**: Coding and GitHub deployment.
- **Ops-Division**: Task tracking (Notion/Trello) and infra.
- **Marketing-Division**: Social hype (X/LinkedIn).
- **Support-Division**: Validation and lead outreach.

## Self-Evolution Protocol

The `evolve` command performs the following:
1. Reads the `gateway.log` for errors or bottlenecks.
2. Identifies which sub-agent failed.
3. Generates a "Lessons Learned" markdown file.
4. Uses `multi-replace-file-content` to update the sub-agent's `AGENTS.md` with new guardrails.
