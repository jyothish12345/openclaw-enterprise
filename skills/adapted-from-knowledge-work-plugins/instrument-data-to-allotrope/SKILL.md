---
name: instrument-data-to-allotrope
description: Standardize experimental data formats using schema models. Use when converting raw instrument data (proprietary formats) to open standards (Allotrope, JSON-LD, Parquet) for interoperability and FAIR data principles. Adapted for OpenClaw.
---

# Scientific Data Standardization (OpenClaw Adapted)

Standardize experimental data formats for interoperability and FAIR principles.

## When to Use
- Converting raw instrument data
- Standardizing metadata
- Ensuring FAIR data (Findable, Accessible, Interoperable, Reusable)
- Integrating lab automation data
- Creating schema-compliant datasets (Allotrope, JSON-LD)

## Data Models

### 1. Allotrope Data Format (ADF)
- **Concept:** Standardized container for analytical data.
- **Components:** Data Cubes (ND-arrays), Data Package (files), Metadata (RDF/JSON-LD).
- **Use Case:** Chromatography, Spectroscopy, Plate Readers.

### 2. JSON-LD (Linked Data)
- **Concept:** JSON with semantic context (ontologies).
- **Use Case:** Metadata describing experiments, samples, conditions.
- **Example:**
```json
{
  "@context": "https://schema.org/",
  "@type": "Dataset",
  "name": "HPLC Run 001",
  "description": "Analysis of sample X via HPLC",
  "creator": {
    "@type": "Person",
    "name": "Researcher A"
  },
  "variableMeasured": ["Retention Time", "Absorbance"]
}
```

### 3. Parquet (Columnar Storage)
- **Concept:** Efficient binary format for large datasets.
- **Use Case:** High-throughput screening, genomics, large tabular data.
- **Schema:** Defined types, nullable fields, compression.

## Conversion Workflow

1. **Input:** Raw file (CSV, Excel, Vendor Proprietary).
2. **Schema Mapping:** Map columns to standard ontology terms.
3. **Validation:** Check against schema (Pydantic / JSON Schema).
4. **Output:** Standardized file (ADF / JSON-LD / Parquet).

## Conversion Script Template (Python)

```python
import pandas as pd
import json

# 1. Load Raw Data
raw_df = pd.read_csv("instrument_output.csv")

# 2. Map Columns
schema_map = {
    "Run Date": "date",
    "Sample Name": "sample_id",
    "Result": "measurement_value",
    "Units": "unit"
}
std_df = raw_df.rename(columns=schema_map)

# 3. Add Metadata
metadata = {
    "instrument_id": "LC-MS-01",
    "operator": "User1",
    "method": "Standard Protocol A"
}

# 4. Convert to JSON-LD
output = {
    "@context": "http://schema.org",
    "@type": "Observation",
    "metadata": metadata,
    "data": std_df.to_dict(orient="records")
}

# 5. Save
with open("standardized_data.jsonld", "w") as f:
    json.dump(output, f, indent=2)
```

## Using with OpenClaw

**Workflow:**
1. Guide user to define schema mapping.
2. Generate conversion script (Python).
3. Execute conversion.
4. Validate output.
5. Save schema and scripts to `/memory/research/standardization/`.

## File Storage
`/memory/research/standardization/[instrument]-schema.json`

---
*Adapted from knowledge-work-plugins (bio-research/instrument-data-to-allotrope) for OpenClaw*
