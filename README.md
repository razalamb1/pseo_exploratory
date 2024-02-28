# Reorganizing PSEO Data

This repo is demonstrating the exploratoy concept of reorganizing the PSEO data from production to a more useful application-driven format.

Currently, this project has focused on the earnings, but flow will also be incorporated. Currently, the data is loaded directly from the LEHD website into a PostgreSQL database inside a Docker container. After loading the data in the original format, SQL scripts are run to create 6 unique earnings tables that are broken down by geographic specificity (either state or institution) and CIP code specificity (either all programs, 2-digit, or 4-digit). The next step is to use these updated tables to create "national" margins.

## Getting Started

In order to run this container, run the following command from the command line:

```{shell}
docker build -t pseo .
```

Then, to run the continaer:

```{shell}
docker run -p 5432:5432 pseo
```

To test that the tables loaded correctly, you may want to connect to the database within the Docker container to check the data.

```{shell}
docker exec -it {container_name} psql -U postgres -d pseo
```

## Process

To understand what is happening inside the Docker container, read this section.

### Shell Script

First, a [shell script](scripts/get_data.sh) is run within the Docker container, which downloads the full flows and earnings data (as well as the list of institutions in PSEO) from the LEHD website.

### SQL Scripts

Next, SQL scripts are run to setup, load, and reorganize the database. The purpose of the scripts are highlighted below.

#### Creating and Loading Basic Tables

First, [01_create_earnings.sql](01_create_earnings.sql), [02_create_earnings.sql](02_create_earnings.sql), and [03_create_earnings.sql](03_create_institutions.sql) create the tables to load the earnings, flows, and institutions data into the database **as is** with no modifications to their format. Next, [04_load_data.sql](04_load_data.sql) copies the data from the downloaded CSV files into the PostgreSQL database.

#### Reformatting Earnings Tables

After the data is loaded into PostgreSQL, the remaining files are reformatting. [05_create_state_earnings.sql](05_create_state_earnings.sql) and [06_create_inst_earnings.sql](06_create_inst_earnings.sql) create the three tables (each) for state and earnings, one for each level of CIP code. And finally, [07_link_tables.sql](07_link_tables.sql) creates links between the tables. The links are described below:

- Institution tables are linked to their appropriate state tables. For example, the earnings for University of Alabama for the 2010 cohort with bachelor's degrees in the two-digit CIP code for education is linked to the two-digit CIP state earnings table for all Alabama institutions for the 2010 cohort with bachelor's degrees in the two-digit CIP code for education.
- Four-digit CIP tables are linked to the two-digit CIP table and the all CIPs table. For example, for the earnings for University of Alabama for the 2010 cohort with bachelor's degrees in the four-digit CIP code for special education and teaching is linked to both the same earnings for two-digit CIP code for education **and** to all CIP codes.
- Two-digit CIP tables are linked to the all CIPs table (very similar to above).

## New Format

The new format of the earnings table is described in brief below. This example SQL code shows how to retrieve earnings given parameters.

```{SQL}
SELECT earnings FROM {level}_earn_{cip_level}
WHERE geo_identifier = {geo_id}
    AND grad_cohort = '{grad_cohort}'
    AND degree_level = '{degree_level}'
    AND cipcode = '{cipcode}'
    AND years_post = {year}
    AND percentile = {percentile}
```

The parameters used in the statement above are described here in more detail:

- `level`: the level of geographic aggregation of the data, currently either "state" or "inst" (for institution). Eventually, there will also be "national" as an option.
- `cip_level`: the level of CIP code aggregation of the data, either "all" for all earnings aggregated, "two_digit", or "four_digit".
- `geo_id`: the identifier for the geographic level of the data. If `level` is "inst", this is the institution code, and if `level` is "state", this is the state FIPS code.
- `degree_level`: the level of the degree attained.
- `cipcode`: the cipcode for the earnings. If the `cip_level` is "all", this value will be `00` for all earnings. If `cip_level` is "two_digit" or "four_digit", the `cipcode` will be the two-digit or four-digit CIP code.
- `years_post`: the number of years post graduation for the earnings. This is either 1, 5, or 10.
- `percentile`: the percentile of the earnings for the specified `years_post`. This is either 25, 50, or 75.
