FROM postgres:latest

# Environment
ENV POSTGRES_PASSWORD secretpass
ENV POSTGRES_DB pseo

# Copy scripts
COPY scripts /scripts 
COPY sql_scripts /docker-entrypoint-initdb.d

# Install wget
RUN apt-get update && apt-get install -y wget

# Get data
RUN /scripts/get_data.sh


