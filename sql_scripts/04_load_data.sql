COPY earnings
FROM '/data/pseoe_all.csv' WITH CSV HEADER;
COPY flows
FROM '/data/pseof_all.csv' WITH CSV HEADER;
COPY institutions
FROM '/data/pseo_all_institutions.csv' WITH CSV HEADER;