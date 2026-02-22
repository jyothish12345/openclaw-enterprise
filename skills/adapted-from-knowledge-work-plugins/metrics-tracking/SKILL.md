---
name: metrics-tracking
description: Track and analyze product metrics. Monitor KPIs, create dashboards, and identify trends. Use for product analytics, performance monitoring, and data-driven decisions. Adapted for OpenClaw.
---

# Metrics Tracking (OpenClaw Adapted)

Track product metrics, monitor KPIs, and make data-driven decisions.

## When to Use
- Tracking product metrics
- Monitoring KPIs
- Analyzing performance trends
- Creating metric dashboards
- Data-driven decision making

## Metrics Dashboard Template

```markdown
# Metrics Dashboard: [Product/Feature]

**Period:** [Date range]
**Last Updated:** [YYYY-MM-DD]

---

## Key Metrics

| Metric | Current | Previous | Change | Target | Status |
|--------|---------|----------|--------|--------|--------|
| [Metric 1] | [Value] | [Value] | +X% | [Target] | 🟢/🟡/🔴 |
| [Metric 2] | [Value] | [Value] | -X% | [Target] | 🟢/🟡/🔴 |

---

## Trends

### [Metric Name]
- **7-day trend:** [Up/Down/Flat]
- **30-day trend:** [Up/Down/Flat]
- **Analysis:** [What's driving the trend]

---

## Insights

**What's working:**
- [Positive signal]

**Concerns:**
- [Negative signal or risk]

**Actions:**
- [ ] [Action based on data]
```

## Common Metrics by Category

### Engagement
- DAU/MAU (Daily/Monthly Active Users)
- Session duration
- Feature adoption rate
- Retention (D1, D7, D30)

### Growth
- New user signups
- Activation rate
- Referral rate
- Viral coefficient

### Business
- MRR/ARR
- Churn rate
- LTV:CAC ratio
- Conversion rate

### Performance
- Page load time
- Error rate
- API response time
- Uptime

## File Storage

Metrics saved to:
- `/memory/metrics/YYYY-MM-DD-dashboard.md`
- `/memory/metrics/[metric-name]-trends.md`

---
*Adapted for OpenClaw*
