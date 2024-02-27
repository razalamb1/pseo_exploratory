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

## Next Steps

The next steps involve the following:

- Create national margins from the updated table formats.
- Add foreign keys to reference parent/children.
