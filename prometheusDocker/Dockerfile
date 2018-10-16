from ubuntu
run mkdir /opt/prometheus
run cd /opt
run apt-get update
run apt-get -y upgrade
run apt-get -y install wget

#prometheus
run wget -P /opt https://github.com/prometheus/prometheus/releases/download/v2.3.2/prometheus-2.3.2.linux-amd64.tar.gz
run tar -xzf /opt/prometheus-2.3.2.linux-amd64.tar.gz -C /opt/
run cp -a /opt/prometheus-2.3.2.linux-amd64/. /opt/prometheus/
run rm -rf /opt/prometheus-2.3.2.linux-amd64/
run rm /opt/prometheus-2.3.2.linux-amd64.tar.gz

#alertmanager
run wget -P /opt https://github.com/prometheus/alertmanager/releases/download/v0.15.2/alertmanager-0.15.2.linux-amd64.tar.gz
run tar -xzf /opt/alertmanager-0.15.2.linux-amd64.tar.gz -C /opt/
run cp -a /opt/alertmanager-0.15.2.linux-amd64/. /opt/alertmanager/
run rm -rf /opt/alertmanager-0.15.2.linux-amd64/
run rm /opt/alertmanager-0.15.2.linux-amd64.tar.gz


#get grafana
run wget -P /opt https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.3.0.linux-amd64.tar.gz 
run tar -xzf /opt/grafana-5.3.0.linux-amd64.tar.gz -C /opt/
run cp -a /opt/grafana-5.3.0/. /opt/grafana/
run rm -rf /opt/grafana-5.3.0/
run rm /opt/grafana-5.3.0.linux-amd64.tar.gz

#config files
copy prometheus.yml /opt/prometheus/prometheus.yml
copy alert.rules.yml /opt/prometheus/alert.rules.yml
copy run.sh /opt/run.sh


#cmd bash
cmd /opt/run.sh