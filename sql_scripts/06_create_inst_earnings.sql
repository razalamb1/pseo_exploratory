-- Define table for all CIP codes --
CREATE Table inst_earn_all (
    iea_id SERIAL PRIMARY KEY,
    geo_identifier VARCHAR NOT NULL,
    statefips VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    years_post INTEGER NOT NULL,
    percentile INTEGER NOT NULL,
    earnings INTEGER,
    ipeds_count INTEGER,
    grads_earn INTEGER,
    program_count INTEGER,
    status_earnings INTEGER,
    status_grads_earn INTEGER,
    status_ipeds_count INTEGER
);
-- Define table for 2-digit CIP codes --
CREATE Table inst_earn_two_digit (
    iet_id SERIAL PRIMARY KEY,
    geo_identifier VARCHAR NOT NULL,
    statefips VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    years_post INTEGER NOT NULL,
    percentile INTEGER NOT NULL,
    earnings INTEGER,
    ipeds_count INTEGER,
    grads_earn INTEGER,
    program_count INTEGER,
    status_earnings INTEGER,
    status_grads_earn INTEGER,
    status_ipeds_count INTEGER
);
-- Define table for 4-digit CIP codes --
CREATE Table inst_earn_four_digit (
    ief_id SERIAL PRIMARY KEY,
    geo_identifier VARCHAR NOT NULL,
    statefips VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    years_post INTEGER NOT NULL,
    percentile INTEGER NOT NULL,
    earnings INTEGER,
    ipeds_count INTEGER,
    grads_earn INTEGER,
    program_count INTEGER,
    status_earnings INTEGER,
    status_grads_earn INTEGER,
    status_ipeds_count INTEGER
);
-- Load data into table for all CIP codes --
--- Y1, P25 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    25 AS percentile,
    e.y1_p25_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- Y1, P50 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    50 AS percentile,
    e.y1_p50_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- Y1, P75 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    75 AS percentile,
    e.y1_p75_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- Y5, P25 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    25 AS percentile,
    e.y5_p25_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- Y5, P50 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    50 AS percentile,
    e.y5_p50_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- Y5, P75 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    75 AS percentile,
    e.y5_p75_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- Y10, P25 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    25 AS percentile,
    e.y10_p25_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- y10, P50 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    50 AS percentile,
    e.y10_p50_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
--- y10, P75 ---
INSERT INTO inst_earn_all (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    75 AS percentile,
    e.y10_p75_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = 'A';
-- Load data into table for two-digit CIP codes --
--- Y1, P25 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    25 AS percentile,
    e.y1_p25_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- Y1, P50 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    50 AS percentile,
    e.y1_p50_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- Y1, P75 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    75 AS percentile,
    e.y1_p75_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- Y5, P25 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    25 AS percentile,
    e.y5_p25_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- Y5, P50 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    50 AS percentile,
    e.y5_p50_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- Y5, P75 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    75 AS percentile,
    e.y5_p75_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- Y10, P25 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    25 AS percentile,
    e.y10_p25_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- y10, P50 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    50 AS percentile,
    e.y10_p50_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
--- y10, P75 ---
INSERT INTO inst_earn_two_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    75 AS percentile,
    e.y10_p75_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '2';
-- Load data into table for four-digit CIP codes --
--- Y1, P25 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    25 AS percentile,
    e.y1_p25_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- Y1, P50 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    50 AS percentile,
    e.y1_p50_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- Y1, P75 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    1 AS years_post,
    75 AS percentile,
    e.y1_p75_earnings AS earnings,
    e.y1_ipeds_count AS ipeds_count,
    e.y1_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y1_earnings AS status_earnings,
    e.status_y1_grads_earn AS status_grads_earn,
    e.status_y1_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- Y5, P25 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    25 AS percentile,
    e.y5_p25_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- Y5, P50 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    50 AS percentile,
    e.y5_p50_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- Y5, P75 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    5 AS years_post,
    75 AS percentile,
    e.y5_p75_earnings AS earnings,
    e.y5_ipeds_count AS ipeds_count,
    e.y5_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y5_earnings AS status_earnings,
    e.status_y5_grads_earn AS status_grads_earn,
    e.status_y5_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- Y10, P25 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    25 AS percentile,
    e.y10_p25_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- y10, P50 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    50 AS percentile,
    e.y10_p50_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';
--- y10, P75 ---
INSERT INTO inst_earn_four_digit (
        geo_identifier,
        statefips,
        degree_level,
        cipcode,
        grad_cohort,
        years_post,
        percentile,
        earnings,
        ipeds_count,
        grads_earn,
        program_count,
        status_earnings,
        status_grads_earn,
        status_ipeds_count
    )
SELECT e.institution AS geo_identifier,
    i.state_fips AS statefips,
    e.degree_level,
    e.cipcode,
    e.grad_cohort,
    10 AS years_post,
    75 AS percentile,
    e.y10_p75_earnings AS earnings,
    e.y10_ipeds_count AS ipeds_count,
    e.y10_grads_earn AS grads_earn,
    1 AS program_count,
    e.status_y10_earnings AS status_earnings,
    e.status_y10_grads_earn AS status_grads_earn,
    e.status_y10_ipeds_count AS status_ipeds_count
FROM earnings e
    JOIN institutions i ON e.institution = i.institution
WHERE e.inst_level = 'I'
    AND e.cip_level = '4';