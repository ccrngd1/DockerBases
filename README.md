# DockerBases
general docker bases to make spin up new systems a bit quicker

#doing versioning correctly
$name = 'lawsonCS/appName'
$gitHash = (git log -1 --pretty=%h) #expect something like b4d484b
$buildDate = (get-date -UFormat "%Y%m%d") #expect something like 20180913
$img = $name + ":" + $buildDate + "_" + $gitHash #expect something like lawsonCS/appName:20180913_b4d484b
$imgLatest = $name + ":latest" #expect exactly lawsonCS/appName:latest
 
#create docker image
docker build -t $img .
docker tag $img $imgLatest


#PrometheusDocker
general dockerfile and some config files to get prometheus/alertmanager/grafana up and running quickly
(scrape config for prom is pointed to some internal sites and would need to be altered for other deployments)

to run:

cd prometheusDocker
docker build -t prom:latest .
docker run -it -p 9090:9090 -p 3000:3000 prom:latest
