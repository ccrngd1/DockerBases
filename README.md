# DockerBases
general docker bases to make spin up new systems a bit quicker


#PrometheusDocker
general dockerfile and some config files to get prometheus/alertmanager/grafana up and running quickly
(scrape config for prom is pointed to some internal sites and would need to be altered for other deployments)

to run:

cd prometheusDocker
docker build -t prom:latest .
docker run -it -p 9090:9090 -p 3000:3000 prom:latest
