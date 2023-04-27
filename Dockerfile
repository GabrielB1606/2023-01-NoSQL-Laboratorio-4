# Start from a Cassandra base image
FROM cassandra:latest

# Set environment variables (change as needed)
ENV CASSANDRA_CLUSTER_NAME MyCluster
ENV CASSANDRA_ENDPOINT_SNITCH GossipingPropertyFileSnitch

# Copy necessary files
COPY init.cql /init.cql
COPY mtcars.csv /mtcars.csv

