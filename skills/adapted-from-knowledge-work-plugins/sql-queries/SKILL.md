---
name: sql-queries
description: Generate SQL queries for common data analysis tasks. Use when you need to write SQL for filtering, aggregating, joining, window functions, or complex data transformations. Adapted for OpenClaw.
---

# SQL Query Generation (OpenClaw Adapted)

Standard SQL patterns for data analysis.

## When to Use
- Writing SQL queries
- Analyzing data in databases
- Filtering, aggregating, and joining data
- Using window functions
- Transforming data

## Common SQL Patterns

### 1. Basic Selection & Filtering

```sql
SELECT 
    column1, 
    column2, 
    expression AS alias
FROM table_name
WHERE 
    condition1 = 'value' 
    AND condition2 > 100
    OR condition3 IS NOT NULL
ORDER BY column1 DESC
LIMIT 100;
```

### 2. Aggregation (Group By)

```sql
SELECT 
    category,
    COUNT(*) AS total_items,
    SUM(amount) AS total_revenue,
    AVG(rating) AS average_rating
FROM sales
GROUP BY category
HAVING SUM(amount) > 1000
ORDER BY total_revenue DESC;
```

### 3. Joins (Relational Data)

**Inner Join (Match Both):**
```sql
SELECT o.order_id, c.customer_name
FROM orders o
INNER JOIN customers c ON o.customer_id = c.id;
```

**Left Join (All Left, Match Right):**
```sql
SELECT c.customer_name, o.order_date
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.order_id IS NULL; -- Find customers with NO orders
```

### 4. Window Functions (Advanced Analytics)

**Rank:**
```sql
SELECT 
    employee_name, 
    department, 
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as rank
FROM employees;
```

**Moving Average:**
```sql
SELECT 
    date,
    sales,
    AVG(sales) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as 7_day_avg
FROM daily_sales;
```

**Running Total:**
```sql
SELECT 
    date,
    amount,
    SUM(amount) OVER (ORDER BY date) as cumulative_amount
FROM transactions;
```

### 5. Common Table Expressions (CTEs)

Simplify complex queries:

```sql
WITH monthly_sales AS (
    SELECT 
        DATE_TRUNC('month', order_date) as month,
        SUM(amount) as total
    FROM orders
    GROUP BY 1
),
growth_rates AS (
    SELECT 
        month,
        total,
        LAG(total) OVER (ORDER BY month) as prev_month,
        (total - LAG(total) OVER (ORDER BY month)) / LAG(total) OVER (ORDER BY month) as growth
    FROM monthly_sales
)
SELECT * FROM growth_rates WHERE growth > 0.1;
```

### 6. Date Manipulation (PostgreSQL/Standard)

```sql
-- Truncate to Month/Week
DATE_TRUNC('month', timestamp_col)
DATE_TRUNC('week', timestamp_col)

-- Extract Parts
EXTRACT(YEAR FROM timestamp_col)
EXTRACT(HOUR FROM timestamp_col)

-- Filtering
WHERE created_at >= NOW() - INTERVAL '30 days'
```

## Using with OpenClaw

**Workflow:**
1. Identify data source and question.
2. Select appropriate SQL pattern.
3. Replace placeholders with actual table/column names.
4. Execute via `exec` (if CLI available) or guide user.
5. Save complex queries to `/memory/data/queries/`.

## File Storage
`/memory/data/queries/[query-name].sql`

---
*Adapted from knowledge-work-plugins (data/sql-queries) for OpenClaw*
