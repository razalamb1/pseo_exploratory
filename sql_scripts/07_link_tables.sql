-- Link State and Institution Tables --
--- All CIP codes ---
---- add column to institution table ----
ALTER TABLE inst_earn_all
ADD COLUMN sea_id SERIAL;
---- update data in institution table ----
UPDATE inst_earn_all AS i
SET sea_id = s.sea_id
FROM state_earn_all AS s
WHERE i.statefips = s.geo_identifier
    AND i.degree_level = s.degree_level
    AND i.cipcode = s.cipcode
    AND i.grad_cohort = s.grad_cohort
    AND i.years_post = s.years_post
    AND i.percentile = s.percentile;
---- add foreign key constraint ----
ALTER TABLE inst_earn_all
ADD CONSTRAINT fk_inst_earn_state_all FOREIGN KEY (sea_id) REFERENCES state_earn_all(sea_id);
--- Two-digit CIP codes ---
---- add column to institution table ----
ALTER TABLE inst_earn_two_digit
ADD COLUMN set_id SERIAL;
---- update data in institution table ----
UPDATE inst_earn_two_digit AS i
SET set_id = s.set_id
FROM state_earn_two_digit AS s
WHERE i.statefips = s.geo_identifier
    AND i.degree_level = s.degree_level
    AND i.cipcode = s.cipcode
    AND i.grad_cohort = s.grad_cohort
    AND i.years_post = s.years_post
    AND i.percentile = s.percentile;
---- add foreign key constraint ----
ALTER TABLE inst_earn_two_digit
ADD CONSTRAINT fk_inst_earn_state_two_digit FOREIGN KEY (set_id) REFERENCES state_earn_two_digit(set_id);
--- Four-digit CIP codes ---
---- add column to institution table ----
ALTER TABLE inst_earn_four_digit
ADD COLUMN sef_id SERIAL;
---- update data in institution table ----
UPDATE inst_earn_four_digit AS i
SET sef_id = s.sef_id
FROM state_earn_four_digit AS s
WHERE i.statefips = s.geo_identifier
    AND i.degree_level = s.degree_level
    AND i.cipcode = s.cipcode
    AND i.grad_cohort = s.grad_cohort
    AND i.years_post = s.years_post
    AND i.percentile = s.percentile;
---- add foreign key constraint ----
ALTER TABLE inst_earn_four_digit
ADD CONSTRAINT fk_inst_earn_state_four_digit FOREIGN KEY (sef_id) REFERENCES state_earn_four_digit(sef_id);
-- Link CIP code Tables --
--- Institutions ---
---- add columns to four-digit ----
ALTER TABLE inst_earn_four_digit
ADD COLUMN iet_id SERIAL,
    ADD COLUMN iea_id SERIAL;
---- update link for four-digit to two-digit ----
UPDATE inst_earn_four_digit AS ief
SET iet_id = iet.iet_id
FROM inst_earn_two_digit AS iet
WHERE ief.geo_identifier = iet.geo_identifier
    AND ief.degree_level = iet.degree_level
    AND LEFT(ief.cipcode, 2) = iet.cipcode
    AND ief.grad_cohort = iet.grad_cohort
    AND ief.years_post = iet.years_post
    AND ief.percentile = iet.percentile;
---- update link for four-digit to all cip codes ----
UPDATE inst_earn_four_digit AS ief
SET iea_id = iea.iea_id
FROM inst_earn_all AS iea
WHERE ief.geo_identifier = iea.geo_identifier
    AND ief.degree_level = iea.degree_level
    AND ief.grad_cohort = iea.grad_cohort
    AND ief.years_post = iea.years_post
    AND ief.percentile = iea.percentile;
---- add foreign key constraint ----
ALTER TABLE inst_earn_four_digit
ADD CONSTRAINT fk_inst_earn_cip_ft FOREIGN KEY (iet_id) REFERENCES inst_earn_two_digit(iet_id),
    ADD CONSTRAINT fk_inst_earn_cip_fa FOREIGN KEY (iea_id) REFERENCES inst_earn_all(iea_id);
---- add column to two-digit ----
ALTER TABLE inst_earn_two_digit
ADD COLUMN iea_id SERIAL;
---- update link for two-digit to all cip codes ----
UPDATE inst_earn_two_digit AS iet
SET iet_id = iet.iet_id
FROM inst_earn_all AS iea
WHERE iet.geo_identifier = iea.geo_identifier
    AND iet.degree_level = iea.degree_level
    AND iet.grad_cohort = iea.grad_cohort
    AND iet.years_post = iea.years_post
    AND iet.percentile = iea.percentile;
---- add foreign key constraint ----
ALTER TABLE inst_earn_two_digit
ADD CONSTRAINT fk_inst_earn_cip_ta FOREIGN KEY (iea_id) REFERENCES inst_earn_all(iea_id);
--- States ---
---- add columns to four-digit ----
ALTER TABLE state_earn_four_digit
ADD COLUMN set_id SERIAL,
    ADD COLUMN sea_id SERIAL;
---- update link for four-digit to two-digit ----
UPDATE state_earn_four_digit AS sef
SET set_id = stet.set_id
FROM state_earn_two_digit AS stet
WHERE sef.geo_identifier = stet.geo_identifier
    AND sef.degree_level = stet.degree_level
    AND LEFT(sef.cipcode, 2) = stet.cipcode
    AND sef.grad_cohort = stet.grad_cohort
    AND sef.years_post = stet.years_post
    AND sef.percentile = stet.percentile;
---- update link for four-digit to all cip codes ----
UPDATE state_earn_four_digit AS sef
SET sea_id = sea.sea_id
FROM state_earn_all AS sea
WHERE sef.geo_identifier = sea.geo_identifier
    AND sef.degree_level = sea.degree_level
    AND sef.grad_cohort = sea.grad_cohort
    AND sef.years_post = sea.years_post
    AND sef.percentile = sea.percentile;
---- add foreign key constraint ----
ALTER TABLE state_earn_four_digit
ADD CONSTRAINT fk_state_earn_cip_ft FOREIGN KEY (set_id) REFERENCES state_earn_two_digit(set_id),
    ADD CONSTRAINT fk_state_earn_cip_fa FOREIGN KEY (sea_id) REFERENCES state_earn_all(sea_id);
---- add column to two-digit ----
ALTER TABLE state_earn_two_digit
ADD COLUMN sea_id SERIAL;
---- update link for two-digit to all cip codes ----
UPDATE state_earn_two_digit AS stet
SET set_id = stet.set_id
FROM state_earn_all AS sea
WHERE stet.geo_identifier = sea.geo_identifier
    AND stet.degree_level = sea.degree_level
    AND stet.grad_cohort = sea.grad_cohort
    AND stet.years_post = sea.years_post
    AND stet.percentile = sea.percentile;
---- add foreign key constraint ----
ALTER TABLE state_earn_two_digit
ADD CONSTRAINT fk_state_earn_cip_ta FOREIGN KEY (sea_id) REFERENCES state_earn_all(sea_id);