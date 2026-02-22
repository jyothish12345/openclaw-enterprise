---
name: smart-canvas-workflows
description: Visual AI workflow builder with 300+ tool integrations. Create, manage, and execute workflows using drag-and-drop nodes. Connect LLMs, tools, databases, and APIs. Adapted for OpenClaw.
---

# Smart Canvas Workflows (OpenClaw Skill)

Visual AI workflow builder for creating complex automation workflows through drag-and-drop interface. Integrates LLMs, tools, databases, and APIs into powerful automation pipelines.

## When to Use
- Building visual AI workflows
- Creating multi-step automation pipelines
- Connecting multiple tools and services
- Processing data through AI models
- Orchestrating complex tasks
- Creating reusable workflow templates

## Smart Canvas Overview

**Location:** `/Users/joy/Smart-Canvas/production/Smart-Canvas/`

**Capabilities:**
- 300+ tool integrations via Composio
- Visual drag-and-drop workflow builder
- Multiple LLM support (OpenAI, Anthropic, Google Gemini)
- Agent nodes with tool access
- Template system for workflows
- Real-time execution with visual feedback

## Starting Smart Canvas

### Launch Command

```bash
# Start backend
cd /Users/joy/Smart-Canvas/production/Smart-Canvas/backend
python main.py &

# Start frontend
cd /Users/joy/Smart-Canvas/production/Smart-Canvas
npm run dev
```

### Access
- **URL:** http://localhost:3000
- **Backend API:** http://localhost:8000

## Node Types

### Core Nodes

**Input/Output:**
- Start and end points for workflows
- Define workflow parameters
- Return workflow results

**LLM Nodes:**
- OpenAI (GPT-4, GPT-3.5 Turbo)
- Anthropic (Claude 3.5 Sonnet, Opus, Haiku)
- Google Gemini (1.5 Pro, Flash, 1.0 Pro)

**Agent Nodes:**
- AI agents with tool access
- Multi-step reasoning
- Tool execution capabilities

**Coordinator Nodes:**
- Multi-agent orchestration
- Task delegation
- Result aggregation

### Data Nodes

**URL Scraper:**
- Extract text from websites
- Clean HTML content
- Content preview and copy

**YouTube:**
- Video metadata extraction
- Transcript retrieval
- Video analysis

**Document Upload:**
- Support: PDF, Word, Excel, PowerPoint, TXT, CSV
- Text extraction
- File size limit: 10MB

**Media Upload:**
- Support: Images (JPG, PNG, GIF, WebP, SVG, BMP)
- Support: Videos (MP4, AVI, MOV, WebM, MKV)
- AI-powered analysis
- OCR and object detection
- File size limit: 50MB

### Tool Nodes

**Chat with Anything:**
- Interactive AI chat interface
- Customizable system prompts
- Conversation history
- Multi-model support

**Database Nodes:**
- PostgreSQL, MySQL, MongoDB
- Query execution
- Data storage and retrieval

**Vector Stores:**
- Pinecone, Weaviate integration
- Semantic search
- Embedding storage

**File Storage:**
- AWS S3, Google Cloud Storage
- File upload/download
- Storage management

## Common Workflow Patterns

### 1. Website Analysis

```
URL Scraper → Chat with Anything → Output
```

**Purpose:** Scrape and analyze web content

**Steps:**
1. URL Scraper extracts text from website
2. Chat with Anything analyzes content
3. Output returns structured insights

### 2. YouTube Video Summary

```
YouTube → Chat with Anything → Output
```

**Purpose:** Extract and summarize video content

**Steps:**
1. YouTube node extracts video data and transcript
2. Chat with Anything creates summary
3. Output returns key points

### 3. Document Processing

```
Document Upload → Chat with Anything → Output
```

**Purpose:** Process and extract insights from documents

**Steps:**
1. Upload PDF/Word/Excel document
2. AI analyzes and extracts information
3. Output returns structured data

### 4. Multi-Source Research

```
URL Scraper     ↘
Document Upload → Chat with Anything → Output
Media Upload    ↗
```

**Purpose:** Combine multiple sources for comprehensive analysis

**Steps:**
1. Gather content from web, documents, and media
2. Combine and analyze all information
3. Generate comprehensive insights

### 5. Email Automation

```
Gmail Tool → LLM Analysis → Slack Notification
```

**Purpose:** Analyze emails and send summaries

**Steps:**
1. Gmail tool retrieves emails
2. LLM analyzes and summarizes
3. Slack tool sends notification

### 6. Data Pipeline

```
Database Query → Vector Store → Semantic Search → Output
```

**Purpose:** Build intelligent search over data

**Steps:**
1. Query database for records
2. Store in vector database
3. Enable semantic search
4. Return results

## Creating a Workflow

### Via UI (Visual Builder)

1. **Open Smart Canvas:** http://localhost:3000
2. **Add Nodes:** Drag from sidebar to canvas
3. **Connect Nodes:** Draw connections between outputs and inputs
4. **Configure Nodes:** Click to set parameters
5. **Connect Tools:** Use MCP Tools panel for external services
6. **Run Workflow:** Click run button to execute

### Via Chat-to-Workflow

1. Describe workflow in natural language
2. AI generates workflow structure
3. Review and adjust nodes
4. Execute workflow

## Workflow Templates

### Save Template

```markdown
1. Build workflow in canvas
2. Click "Save Template"
3. Name: [template-name]
4. Description: [what it does]
5. Template saved to /templates
```

### Load Template

```markdown
1. Click "Templates"
2. Browse available templates
3. Select template
4. Click "Load"
5. Workflow loads on canvas
```

## Integration with OpenClaw

### Use Cases

**1. Document Analysis Workflow:**
```
OpenClaw reads files → Smart Canvas processes → Returns insights
```

**2. Web Research Pipeline:**
```
OpenClaw provides URLs → Smart Canvas scrapes/analyzes → Synthesizes results
```

**3. Multi-Tool Automation:**
```
OpenClaw triggers workflow → Smart Canvas orchestrates tools → Returns output
```

### Launching from OpenClaw

```bash
# Check if Smart Canvas is running
curl -s http://localhost:3000 > /dev/null && echo "Running" || echo "Not running"

# Start Smart Canvas if needed
cd /Users/joy/Smart-Canvas/production/Smart-Canvas && \
  (cd backend && python main.py &) && \
  npm run dev &
```

## Available Integrations (via Composio)

### Communication
- Gmail, Outlook, Slack, Discord, Telegram, WhatsApp

### Productivity
- Google Docs, Sheets, Drive, Notion, Trello, Asana

### Development
- GitHub, GitLab, Jira, Linear

### Data & Analytics
- PostgreSQL, MySQL, MongoDB, Pinecone, Weaviate

### Media
- DALL-E, Stable Diffusion, ElevenLabs TTS, OpenAI TTS

### Storage
- AWS S3, Google Cloud Storage, Dropbox

### And 270+ more tools...

## API Keys Required

**Core:**
- COMPOSIO_API_KEY (for 300+ tools)
- OPENAI_API_KEY (for GPT models)

**Optional:**
- ANTHROPIC_API_KEY (for Claude)
- GOOGLE_API_KEY (for Gemini)
- ELEVENLABS_API_KEY (for TTS)
- PINECONE_API_KEY (for vector storage)

## File Storage

Smart Canvas workflows and templates:
- Templates: `/Users/joy/Smart-Canvas/production/Smart-Canvas/templates/`
- Workflows: Saved in browser localStorage or exported as JSON

To integrate with OpenClaw workspace:
- Export workflows from Smart Canvas
- Save to `/memory/workflows/[workflow-name].json`
- Load via Smart Canvas import

## Example: Creating Content Analysis Workflow

**Goal:** Analyze a blog post and create a summary

**Steps:**

1. **Start Smart Canvas:**
```bash
cd /Users/joy/Smart-Canvas/production/Smart-Canvas
./start.sh
```

2. **Build Workflow:**
- Add URL Scraper node
- Add Chat with Anything node (configure with GPT-4)
- Add Output node
- Connect: URL Scraper → Chat → Output

3. **Configure:**
- URL Scraper: Enter blog post URL
- Chat: System prompt: "Summarize this content in 3 bullet points"

4. **Execute:**
- Click "Run Workflow"
- View results in Output node

5. **Save Template:**
- Click "Save Template"
- Name: "Blog Post Summarizer"
- Reuse for future blog posts

## Troubleshooting

### Smart Canvas Won't Start

**Check:**
```bash
# Check if ports are available
lsof -i :3000  # Frontend
lsof -i :8000  # Backend

# Check Node.js version
node --version  # Should be 18+

# Check Python version
python --version  # Should be 3.8+
```

### Node Execution Fails

**Common Issues:**
- Missing API keys (check .env file)
- Invalid node connections
- Tool authentication not configured
- Rate limits reached

### Tools Not Connecting

**Check:**
- Composio API key is valid
- OAuth tokens are refreshed
- Tool is properly configured in Composio dashboard

## Best Practices

1. **Start Simple:** Begin with 2-3 nodes, test, then expand
2. **Name Nodes Clearly:** Helps understand workflow later
3. **Save Templates:** Reuse common patterns
4. **Test Incrementally:** Run workflow after adding each node
5. **Document Workflows:** Add descriptions to templates
6. **Monitor API Usage:** Track costs for LLM calls
7. **Version Control:** Export workflows as JSON for backup

## Using with OpenClaw Skills

**Combine Smart Canvas with:**
- **account-research:** Scrape company websites → analyze
- **customer-research:** Process support tickets → categorize
- **knowledge-synthesis:** Multi-source research → synthesize
- **content-creation:** Generate → process → publish pipeline

## Related OpenClaw Skills

- **task-management** — Track workflow tasks
- **project-planning** — Plan complex workflows
- **note-taking** — Document workflow designs
- **decision-framework** — Choose best workflow approach

---

## Quick Reference

**Start:** `cd /Users/joy/Smart-Canvas/production/Smart-Canvas && ./start.sh`
**Access:** http://localhost:3000
**Templates:** `/Users/joy/Smart-Canvas/production/Smart-Canvas/templates/`
**Docs:** `/Users/joy/Smart-Canvas/production/Smart-Canvas/README.md`

---

*Smart Canvas integration for OpenClaw - Visual AI Workflow Builder*
*Build powerful automation workflows with 300+ tool integrations*
