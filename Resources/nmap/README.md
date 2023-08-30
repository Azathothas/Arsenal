
| Service                                                | About  | Default Port(s)     | Impact          | CVEs & Exploits|
|--------------------------------------------------------|--------|---------------------|-----------------|----------------|
[**ActiveMQ**](https://activemq.apache.org/getting-started)  |  ActiveMQ is a messaging system that enables communication between different software applications. It acts as a central hub, allowing applications to send and receive messages or data.      | Admin Dashboard : [`8161/admin/`](https://activemq.apache.org/web-console) (admin:admin) // Listening : `61616`    | **Information Disclousre** : Config Settings, Logs etc                                                                                                                   **Criticality** : Access (Read, Write, Modify all messages) PII & [more](https://activemq.apache.org/rest) | https://activemq.apache.org/security-advisories.data/
ActiveMQ STOMP |61613 
Apache Cassandra CQL |9042
Apache Hadoop DataNode |50075
Apache Hadoop DataNode HTTP |50075
Apache Hadoop DataNode HTTPS |50475
Apache Hadoop JobHistory Server |19888
Apache Hadoop JobHistory Server HTTP |19888
Apache Hadoop JobHistory Server HTTPS |19890
Apache Hadoop NameNode |50070
Apache Hadoop NameNode HTTPS |50470
Apache Hadoop NameNode Thrift |9090
Apache Hadoop Node Manager |8042
Apache Hadoop NodeManager HTTP |8042
Apache Hadoop NodeManager HTTPS |8044
Apache Hadoop Resource Manager |8088
Apache Hadoop ResourceManager HTTP |8088
Apache Hadoop ResourceManager HTTPS |8090
Apache Hadoop Secondary NameNode |50090
Apache Hadoop Secondary NameNode HTTP |50090
Apache Hadoop Secondary NameNode HTTPS |50091
Apache HBase Master |16000
Apache HBase Master Admin |16000
Apache HBase Master Info |16010
Apache HBase RegionServer |16020
Apache HBase RegionServer Admin |16030
Apache HBase RegionServer Info |16030
Apache Hive Metastore |9083
Apache Hive Server2 |10000
Apache Hive WebHCat |50111
Apache Hive Web UI |10002
Apache HTTP Server |80 or 443
Apache HTTP Server SSL |8443
Apache Kafka |9092
Apache Kafka Connect Distributed Mode |8083
Apache Kafka Connect Distributed Mode (SSL) |8444
Apache Kafka Connect HTTPS |8444
Apache Kafka Connect REST Interface |8083
Apache Kafka Connect REST Interface (SSL) |8444
Apache Kafka Manager |9000
Apache Kafka MirrorMaker |9091
Apache Kafka MirrorMaker HTTPS |9094
Apache Kafka MirrorMaker (SSL) |9092
Apache Kafka REST Proxy |8082
Apache Kafka Schema Registry | 8081
Apache Kafka Schema Registry HTTPS |8084
Apache Mesos Master |5050
Apache Mesos Master HTTPS |5050
Apache Mesos Slave |5051
Apache Mesos Slave HTTPS |5052
Apache NiFi |8080
Apache Solr |8983
Apache Solr Admin |8984
Apache Spark |8080
Apache Spark History Server |18080
Apache Tomcat |8080
Apache Zeppelin |8080
Apache ZooKeeper Admin Server |8080
Apache ZooKeeper Admin Server (SSL) |8443
Apache ZooKeeper Follower |2888
Apache ZooKeeper Leader Election |3888
Apache ZooKeeper Quorum |2888 (peer) | 3888 (leader election)
Artifactory | 8081
Caddy |80 or 443
Caddy Admin |2019
Cassandra |9042
Cassandra JMX |7199
Cassandra Thrift |9160
CockroachDB |26257
CockroachDB HTTP |8080
Consul |8500
Couchbase |8091
Couchbase Sync Gateway |4984
CouchDB |5984
Docker Registry |5000
Elastic Beats (Filebeat | Metricbeat | etc.) | 5044 (Beats input)
Elasticsearch |9200
Elasticsearch Curator |9200
Elasticsearch Head Plugin |9100
Elasticsearch Kopf Plugin |9200
Elasticsearch Machine Learning |8080
Elasticsearch Marvel |9200
Elasticsearch Monitoring |9200 (HTTP) or 9300 (Transport)
Elasticsearch Monitoring (SSL) |9300
Elasticsearch SQL (JDBC) |9300
Elasticsearch SQL (REST) |9200
etcd |2379
GitLab |80 (HTTP) or 443 (HTTPS)
Grafana |3000
Grafana Loki |3100
Graylog |9000
Graylog GELF Input |12201
HAProxy |80 or 443
HAProxy Admin |1936
HashiCorp Consul Connect |8443
HashiCorp Consul DNS |53
HashiCorp Consul Template |8080
HashiCorp Nomad |4646
HashiCorp Nomad Web UI |4646
HashiCorp Nomad Web UI (SSL) |4647
HashiCorp Packer |8080
HashiCorp Packer Web UI |8080
HashiCorp Packer Web UI (SSL) |8081
HashiCorp Terraform |8222
HashiCorp Vault |8200
HashiCorp Vault Admin |8200
HashiCorp Vault Agent |8201
HashiCorp Vault HA |8200
Jenkins |8080
Jenkins Agent |50000
Jenkins Blue Ocean |8080
Jenkins JNLP |50001
Jenkins Remoting | 50000
Jenkins SSH |22
Jenkins SSH (SSL) |50022
JFrog Pipelines | 8080
JFrog Xray | 8000
JupyterHub | 8000
JupyterHub Admin |8000
JupyterHub Proxy |8001
JupyterHub Proxy (SSL) |8002
JupyterLab |8888
Jupyter Notebook |8888
Kibana |5601
Kibana Dashboard Proxy |5603
Kong API Gateway |8000 or 8443
Kubernetes API Server |6443
Kubernetes Dashboard | 8443
Kubernetes Kubelet |10250
Microsoft SQL Server |1433
Minio |9000
Minio Console |9001
MongoDB |27017
MySQL |3306
MySQL Replication |3306
Netdata | 19999
Netdata Web |19999
Nexus Repository Manager |8081
Nginx |80 or 443
Nginx Admin |8081
OpenLDAP | 389 or 636 (with SSL)
OpenLDAP SSL |636
OpenShift API Server |8443
OpenShift Console | 8443
OpenVPN |1194
Portainer |9000
PostgreSQL |5432
PostgreSQL Replication |5432
Prometheus |9090
Prometheus Alertmanager |9093
RabbitMQ |5672
RabbitMQ Management UI | 15672
RabbitMQ MQTT Plugin |1883
RabbitMQ MQTT Plugin (SSL) |8883
RabbitMQ STOMP |61613
RabbitMQ Web MQTT |15675
Rancher |80 or 443
RancherOS | 80 or 443
Redis |6379
Rundeck | 4440
SonarQube |9000
SonarQube Compute Engine |9001
SonarQube Compute Engine HTTPS |9002
Sonatype Nexus Analyze |8073
Sonatype Nexus Blob |8082
Sonatype Nexus Cleanup |8074
Sonatype Nexus Docker Registry |5000
Sonatype Nexus Docker Registry (SSL) |5001
Sonatype Nexus Firewall | 8071
Sonatype Nexus Firewall (SSL) |8072
Sonatype Nexus IQ Server | 8070
Sonatype Nexus IQ Server (SSL) |8071
Sonatype Nexus Lifecycle | 8072
Sonatype Nexus Lifecycle (SSL) |8073
Spinnaker | 9000
Spinnaker API |8084
TeamCity | 8111
Traefik |80 or 8080
Vault UI |8200
WireMock | 8080
WireMock Admin |8443
ZooKeeper |2181
