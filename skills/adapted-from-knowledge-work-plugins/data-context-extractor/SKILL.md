---
name: data-context-extractor
description: Extract metadata, schema information, and context from datasets. Use when you need to understand the structure, meaning, and relationships within a dataset without fully exploring every value.
---

# Data Context Extractor (OpenClaw Adapted)

Extract metadata and context from datasets to understand their structure and meaning.

## When to Use
- Understanding a new dataset's schema
- Extracting column descriptions
- Identifying key relationships (foreign keys)
- Documenting data dictionaries
- Validating data expectations

## Context Extraction Methods

### 1. File Header Analysis (CSV/TSV/JSON)

**Command:** `head -n 5 filename.csv`
- **Goal:** See column names and first few rows
- **Output:** Column list, data types (inferred), delimiters

**Command:** `wc -l filename.csv`
- **Goal:** Get total row count
- **Output:** Dataset size

### 2. Schema Extraction (SQL)

**Query:**
```sql
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'target_table';
```
- **Goal:** Get formal schema definition
- **Output:** Precise column types and constraints

### 3. Relationship Identification

**Heuristics:**
- Columns ending in `_id` or `Id` often indicate Foreign Keys
- Columns named `id`, `uuid`, `pk` often indicate Primary Keys
- Columns with `date`, `time`, `at` often indicate temporal data

## Data Dictionary Template

```markdown
# Data Dictionary: [Dataset Name]

**Source:** [File/Database Table]
**Last Updated:** [YYYY-MM-DD]

## Table: [table_name]

| Column | Type | Description | Example |
|--------|------|-------------|---------|
| `user_id` | INT | Unique user identifier (PK) | 12345 |
| `email` | STR | User email address | user@example.com |
| `created_at` | TIMESTAMP | Account creation date | 2023-01-01 10:00:00 |
| `status` | ENUM | Account status (active, suspended) | active |

## Relationships
- `user_id` links to `orders.user_id` (1:Many)
- `product_id` links to `products.id` (Many:1)

## Business Rules
- `email` must be unique
- `status` defaults to 'pending'
- `created_at` cannot be in future
```

## Automated Context Extraction (OpenClaw)

**Workflow:**
1. Read file header: `read file.csv limit=5`
2. Infer types from values
3. Generate data dictionary markdown
4. Save to `/memory/data/dictionaries/`

## Context Report

```markdown
# Dataset Context: [Name]

**Overview:**
- **Type:** [CSV/JSON/SQL Table]
- **Size:** [Rows] x [Columns]
- **Key Entity:** [What one row represents]

**Key Columns:**
- **[Column A]:** [Description/Role]
- **[Column B]:** [Description/Role]

**Temporal Coverage:**
- **Start:** [Date]
- **End:** [Date]
- **Granularity:** [Daily/Hourly/Transaction]

**Potential Issues:**
- [Issue 1: e.g., Mixed date formats]
- [Issue 2: e.g., Null IDs]
```

## File Storage
`/memory/data/dictionaries/[dataset-name]-dictionary.md`

---
*Adapted from knowledge-work-plugins (data/data-context-extractor) for OpenClaw*
