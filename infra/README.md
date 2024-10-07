## First time setup
### InfluxDB
* Populate the secrets
### Grafana
* Add influxdb datasource here: http://grafana.pinheiro.s3n.io/connections/datasources/new
    * Use flux as query language
    * URL: `http://influxdb:8086`
    * Disable all Auth
    * Organization: `hal`
    * Token: <from-influxdb-secrets>
    * Default bucket: `everything`
* [Import dashboards](http://grafana.marati.s3n.io/dashboard/import)
    * [Telegraf for influxdb2](https://grafana.com/grafana/dashboards/15650-telegraf-influxdb-2-0-flux/)
    * [Telegraf Docker for influxdb2](https://grafana.com/grafana/dashboards/17020-docker-dashboard/)
