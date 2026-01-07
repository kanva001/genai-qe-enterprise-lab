USE QE_Evidence;
GO

-- Basic run counts
SELECT suite_name, environment, COUNT(*) AS run_count
FROM dbo.test_run
GROUP BY suite_name, environment
ORDER BY run_count DESC;

-- Fail rate by suite
SELECT tr.suite_name,
       SUM(CASE WHEN r.status='FAIL' THEN 1 ELSE 0 END) AS fail_count,
       COUNT(*) AS total,
       CAST(100.0 * SUM(CASE WHEN r.status='FAIL' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0) AS DECIMAL(5,2)) AS fail_pct
FROM dbo.test_run tr
JOIN dbo.test_result r ON tr.run_id = r.run_id
GROUP BY tr.suite_name;