CREATE TABLE national_earnings AS
SELECT
    'N' AS inst_level,
    degree_level,
    cip_level,
    cipcode,
    grad_cohort,
    grad_cohort_years,
    CAST(SUM(COALESCE(y1_p25_earnings * y1_grads_earn, 0))/ NULLIF(SUM(COALESCE(y1_grads_earn, 0)), 0) as INTEGER) AS y1_p25_earnings,
    CAST(SUM(COALESCE(y1_p50_earnings * y1_grads_earn, 0))/ NULLIF(SUM(COALESCE(y1_grads_earn, 0)), 0) as INTEGER) AS y1_p50_earnings,
    CAST(SUM(COALESCE(y1_p75_earnings * y1_grads_earn, 0))/ NULLIF(SUM(COALESCE(y1_grads_earn, 0)), 0) as INTEGER) AS y1_p75_earnings,
    SUM(COALESCE(y1_grads_earn, 0)) AS y1_grads_earn,
    CAST(SUM(COALESCE(y5_p25_earnings * y5_grads_earn, 0))/ NULLIF(SUM(COALESCE(y5_grads_earn, 0)), 0) as INTEGER) AS y5_p25_earnings,
    CAST(SUM(COALESCE(y5_p50_earnings * y5_grads_earn, 0))/ NULLIF(SUM(COALESCE(y5_grads_earn, 0)), 0) as INTEGER) AS y5_p50_earnings,
    CAST(SUM(COALESCE(y5_p75_earnings * y5_grads_earn, 0))/ NULLIF(SUM(COALESCE(y5_grads_earn, 0)), 0) as INTEGER) AS y5_p75_earnings,
    SUM(COALESCE(y5_grads_earn, 0)) AS y5_grads_earn,
    CAST(SUM(COALESCE(y10_p25_earnings * y10_grads_earn, 0))/ NULLIF(SUM(COALESCE(y10_grads_earn, 0)), 0) as INTEGER) AS y10_p25_earnings,
    CAST(SUM(COALESCE(y10_p50_earnings * y10_grads_earn, 0))/ NULLIF(SUM(COALESCE(y10_grads_earn, 0)), 0) as INTEGER) AS y10_p50_earnings,
    CAST(SUM(COALESCE(y10_p75_earnings * y10_grads_earn, 0))/ NULLIF(SUM(COALESCE(y10_grads_earn, 0)), 0) as INTEGER) AS y10_p75_earnings,
    SUM(COALESCE(y10_grads_earn, 0)) AS y10_grads_earn
FROM
    earnings
WHERE
    inst_level = 'S'
GROUP BY
    degree_level, cip_level, cipcode, grad_cohort, grad_cohort_years;