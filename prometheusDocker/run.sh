/opt/prometheus/prometheus --web.listen-address="0.0.0.0:9090" --config.file="/opt/prometheus/prometheus.yml" &
/opt/grafana/bin/grafana-server -homepath=/opt/grafana/ &
/opt/alertmanager/alertmanager --config.file="/opt/alertmanager/alertmanager.yml"