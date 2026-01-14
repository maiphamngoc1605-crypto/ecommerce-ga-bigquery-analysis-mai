# E-commerce Analytics with Google Analytics Data (BigQuery)
**SQL Portfolio Project**

---

## Dataset
`bigquery-public-data.google_analytics_sample.ga_sessions_2017*`

---

## Tools & Skills
BigQuery SQL · Google Analytics data model · Nested & repeated fields · Funnel analysis · Window functions · Business metrics design

---

## Project Overview

This project analyzes real Google Analytics session-level data to extract actionable e-commerce insights. Using BigQuery SQL, I transformed raw, nested web analytics data into business-ready metrics covering traffic quality, conversion efficiency, revenue performance, device contribution, and customer purchase behavior.

The focus of this project is not only technical correctness, but also clarity of logic, scalability of queries, and relevance of insights to real business decisions.

---

## Key Business Questions & Insights

**Traffic & Growth Trends (Q1 2017)**  
Traffic and pageviews steadily increased from January to March, while transaction growth lagged behind. This gap suggests early-funnel friction: users are visiting and browsing, but not converting at the same pace.

**Traffic Quality by Source (July 2017)**  
High-volume sources like Google drive most visits but do not always deliver the best engagement. Several lower-volume channels show stronger session quality, highlighting opportunities to rebalance acquisition spend toward higher-intent traffic.

**Revenue Performance by Time Granularity (June 2017)**  
Monthly revenue summaries hide meaningful weekly spikes and drops. Weekly analysis reveals short-term performance swings that are critical for campaign evaluation and tactical decision-making.

**Conversion Efficiency by Channel (2017)**  
Some lower-traffic sources outperform major channels in conversion rate. This reinforces the idea that traffic volume alone is not a proxy for channel value.

**User Engagement: Purchasers vs Non-Purchasers**  
Purchasers exhibit significantly higher engagement than non-purchasers. However, non-purchasers generate a large volume of pageviews, indicating strong interest but unmet conversion triggers.

**Purchase Frequency (July 2017)**  
Users who convert tend to complete multiple transactions, signaling repeat purchase behavior. This opens opportunities for loyalty programs, remarketing, and personalized offers.

**Revenue Contribution by Device**  
Desktop accounts for the majority of revenue, but mobile contributes a meaningful share. Optimizing the mobile checkout flow presents a clear upside with limited downside risk.

**Cross-Sell Behavior**  
Customers who purchase “YouTube Men's Vintage Henley” frequently buy complementary apparel items. This product is a strong candidate for bundling, recommendations, and personalized cross-sell campaigns.

**Funnel Performance (Jan–Mar 2017)**  
The largest drop-off occurs between product views and add-to-cart events. Improving product page clarity, pricing communication, and trust signals would likely deliver the biggest conversion lift.

**Revenue Growth Over Time (May–July 2017)**  
Cumulative revenue shows consistent growth with visible weekly fluctuations. This pattern is useful for identifying strong campaign periods and diagnosing underperforming weeks.

---

## Technical Highlights

- Efficient date filtering using `_TABLE_SUFFIX`  
- Deep handling of nested GA data with `UNNEST(hits)` and `UNNEST(product)`  
- Funnel tracking using `eCommerceAction.action_type`  
- Revenue normalization for readability  
- Window functions for cumulative metrics  
- Clear use of CTEs for maintainable, readable SQL
