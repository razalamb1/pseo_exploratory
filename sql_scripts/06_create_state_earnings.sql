-- All CIP codes --
CREATE Table state_earn_all (
    sea_id SERIAL PRIMARY KEY,
    geo_identifier VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    years_post INTEGER NOT NULL,
    percentile INTEGER NOT NULL,
    earnings INTEGER,
    ipeds_count INTEGER,
    grads_earn INTEGER,
    school_count INTEGER,
    status_earnings INTEGER,
    status_grads_earn INTEGER,
    status_ipeds_count INTEGER
);
-- 2-digit CIP codes --
CREATE Table state_earn_two_digit (
    set_id SERIAL PRIMARY KEY,
    geo_identifier VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    years_post INTEGER NOT NULL,
    percentile INTEGER NOT NULL,
    earnings INTEGER,
    ipeds_count INTEGER,
    grads_earn INTEGER,
    school_count INTEGER,
    status_earnings INTEGER,
    status_grads_earn INTEGER,
    status_ipeds_count INTEGER
);
-- 4-digit CIP codes --
CREATE Table state_earn_four_digit (
    sef_id SERIAL PRIMARY KEY,
    geo_identifier VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    years_post INTEGER NOT NULL,
    percentile INTEGER NOT NULL,
    earnings INTEGER,
    ipeds_count INTEGER,
    grads_earn INTEGER,
    school_count INTEGER,
    status_earnings INTEGER,
    status_grads_earn INTEGER,
    status_ipeds_count INTEGER
);
-- Load data into table for all CIP codes --
--- Y1, P25 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    25 AS percentile,
    y1_p25_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y1, P50 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    50 AS percentile,
    y1_p50_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y1, P75 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    75 AS percentile,
    y1_p75_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y5, P25 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    25 AS percentile,
    y5_p25_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y5, P50 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    50 AS percentile,
    y5_p50_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y5, P75 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    75 AS percentile,
    y5_p75_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y10, P25 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    25 AS percentile,
    y10_p25_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y10, P50 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    50 AS percentile,
    y10_p50_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
--- Y10, P75 ---
INSERT INTO state_earn_all (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    75 AS percentile,
    y10_p75_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = 'A';
-- Load data into table for two-digit CIP codes --
--- Y1, P25 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    25 AS percentile,
    y1_p25_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y1, P50 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    50 AS percentile,
    y1_p50_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y1, P75 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    75 AS percentile,
    y1_p75_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y5, P25 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    25 AS percentile,
    y5_p25_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y5, P50 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    50 AS percentile,
    y5_p50_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y5, P75 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    75 AS percentile,
    y5_p75_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y10, P25 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    25 AS percentile,
    y10_p25_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y10, P50 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    50 AS percentile,
    y10_p50_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
--- Y10, P75 ---
INSERT INTO state_earn_two_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    75 AS percentile,
    y10_p75_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '2';
-- Load data into table for four-digit CIP codes --
--- Y1, P25 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    25 AS percentile,
    y1_p25_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y1, P50 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    50 AS percentile,
    y1_p50_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y1, P75 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    1 AS years_post,
    75 AS percentile,
    y1_p75_earnings AS earnings,
    y1_ipeds_count AS ipeds_count,
    y1_grads_earn AS grads_earn,
    1 as school_count,
    status_y1_earnings AS status_earnings,
    status_y1_grads_earn AS status_grads_earn,
    status_y1_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y5, P25 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    25 AS percentile,
    y5_p25_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y5, P50 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    50 AS percentile,
    y5_p50_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y5, P75 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    5 AS years_post,
    75 AS percentile,
    y5_p75_earnings AS earnings,
    y5_ipeds_count AS ipeds_count,
    y5_grads_earn AS grads_earn,
    1 as school_count,
    status_y5_earnings AS status_earnings,
    status_y5_grads_earn AS status_grads_earn,
    status_y5_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y10, P25 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    25 AS percentile,
    y10_p25_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y10, P50 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    50 AS percentile,
    y10_p50_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';
--- Y10, P75 ---
INSERT INTO state_earn_four_digit (
        geo_identifier,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        school_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT institution as geo_identifier,
    degree_level,
    cipcode,
    grad_cohort,
    10 AS years_post,
    75 AS percentile,
    y10_p75_earnings AS earnings,
    y10_ipeds_count AS ipeds_count,
    y10_grads_earn AS grads_earn,
    1 as school_count,
    status_y10_earnings AS status_earnings,
    status_y10_grads_earn AS status_grads_earn,
    status_y10_ipeds_count AS status_ipeds_count
FROM earnings
WHERE inst_level = 'S'
    AND cip_level = '4';