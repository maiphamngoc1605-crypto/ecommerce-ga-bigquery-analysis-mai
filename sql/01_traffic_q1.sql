SELECT
  FORMAT_DATE('%Y-%m', PARSE_DATE('%Y%m%d', date)) AS month,
  SUM(totals.visits) AS total_visits,
  SUM(totals.pageviews) AS total_pageviews,
  SUM(IFNULL(totals.transactions,0)) AS total_transactions
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_2017*`
WHERE _TABLE_SUFFIX BETWEEN '0101' AND '0331'
GROUP BY month
ORDER BY month;
