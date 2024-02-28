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