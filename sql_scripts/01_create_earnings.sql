CREATE Table earnings (
    agg_level_pseo VARCHAR NOT NULL,
    inst_level VARCHAR NOT NULL,
    institution VARCHAR NOT NULL,
    degree_level VARCHAR NOT NULL,
    cip_level VARCHAR NOT NULL,
    cipcode VARCHAR NOT NULL,
    grad_cohort VARCHAR NOT NULL,
    grad_cohort_years VARCHAR NOT NULL,
    geo_level VARCHAR NOT NULL,
    geography VARCHAR NOT NULL,
    ind_level VARCHAR NOT NULL,
    industry VARCHAR NOT NULL,
    y1_p25_earnings BIGINT,
    y1_p50_earnings BIGINT,
    y1_p75_earnings BIGINT,
    y1_grads_earn BIGINT,
    y5_p25_earnings BIGINT,
    y5_p50_earnings BIGINT,
    y5_p75_earnings BIGINT,
    y5_grads_earn BIGINT,
    y10_p25_earnings BIGINT,
    y10_p50_earnings BIGINT,
    y10_p75_earnings BIGINT,
    y10_grads_earn BIGINT,
    y1_ipeds_count BIGINT,
    y5_ipeds_count BIGINT,
    y10_ipeds_count BIGINT,
    status_y1_earnings INTEGER,
    status_y1_grads_earn INTEGER,
    status_y5_earnings INTEGER,
    status_y5_grads_earn INTEGER,
    status_y10_earnings INTEGER,
    status_y10_grads_earn INTEGER,
    status_y1_ipeds_count INTEGER,
    status_y5_ipeds_count INTEGER,
    status_y10_ipeds_count INTEGER
)
