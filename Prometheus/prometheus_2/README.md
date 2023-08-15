# PROMETHEUS LAB 2

### 1) How do I trigger a Prometheus alert?
1. **Define Alerting Rules:** Create alerting rules using PromQL expressions.

2. **Configure Alertmanager:** You need to configure Alertmanager to specify how alerts should be routed, grouped, and sent to different notification channels.

3. **Run Prometheus and Alertmanager:** Ensure that both Prometheus and Alertmanager are running and properly configured.

4. **Monitor Alerts:** Prometheus continuously evaluates your alerting rules against the collected metrics. 

5. **Alertmanager Processing:** Alertmanager processes alerts, groups them according to your configuration, and then sends notifications to the configured notification receivers based on the alert grouping and routing rules.

-----

### 2) What is the difference between node exporter and mysql exporter ?
- **Scope:** Node Exporter is focused on collecting system-level metrics from the host machine, while MySQL Exporter is focused on collecting database-specific metrics from MySQL instances.

- **Data Source:** Node Exporter collects metrics from the operating system and hardware, whereas MySQL Exporter collects metrics from the MySQL database server.

- **Metrics:** Node Exporter provides metrics related to CPU, memory, disk, and network usage on the host machine, while MySQL Exporter provides metrics related to MySQL database performance and query execution.

- **Use Case:** Node Exporter is used to monitor the overall health and performance of the infrastructure, while MySQL Exporter is used to monitor and optimize the performance of MySQL databases.

-----

### 3) what is the maximum retention period to save data in Prometheus and how to increase it ?
- By default, Prometheus retains data for 15 days.

- To increase or adjust the retention period in Prometheus, you need to modify the --storage.tsdb.retention.time flag in the Prometheus configuration file or as a command-line parameter when starting Prometheus. This flag specifies the duration for which data should be retained.

-----


### 4) What are the different PromQL data types available in Prometheus Expression language?
- **Instant vector:**  a set of time series that all have data points at the same timestamp
- **Range vector:**  a set of time series over a specified range of time. 
- **Scalar:** A simple numeric floating point value.
- **String:** A simple string value. This data type is currently unused in Prometheus.

-----

### 5) How To calculate the average request duration over the last 5 minutes from a histogram ?
you need to use the histogram_quantile  
    
    avg(
    histogram_quantile(0.5, rate(http_request_duration_seconds_bucket[5m]))
    )
-----

### 6) What is Thanos Prometheus?

**Thanos** is an open-source project designed to enhance and extend the capabilities of Prometheus, a popular monitoring and alerting system. Thanos helps solve some of the challenges associated with long-term storage, scalability, and high availability in Prometheus-based monitoring setups. It is not a replacement for Prometheus but rather a complementary toolset that adds features to Prometheus deployments.

------

### 7) what is promtool and how i can use it ?

**promtool** is a command-line utility that comes bundled with Prometheus. It is designed to help you validate and lint Prometheus-related configuration files, such as Prometheus configuration files (prometheus.yml), alerting rules files, and recording rules files

you can use it to :
- Validation of Configuration Files
- Linting Rules Files
- Validation of PromQL Queries

-----

### 8) What types of Monitoring can be done via Grafana?
1. **Infrastructure Monitoring:**
Grafana can monitor the health, performance, and resource utilization of servers, virtual machines, containers, and other infrastructure components. It helps you keep track of CPU usage, memory usage, disk I/O, network traffic, and more.

2. **Application Monitoring:**
Grafana can provide insights into the behavior and performance of applications. It allows you to visualize metrics related to response times, error rates, throughput, and other application-specific data.

3. **Database Monitoring:**
Grafana can be used to monitor various database systems like MySQL, PostgreSQL, MongoDB, and more. It helps track database performance metrics, query execution times, connection counts, and other relevant database statistics.

4. **Network Monitoring:**
Grafana enables you to monitor network devices, routers, switches, and firewalls. It can display metrics related to network latency, packet loss, bandwidth usage, and other network-related metrics.

5. **Cloud Services Monitoring:**
Grafana can monitor cloud services such as Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP). It helps visualize metrics from cloud services like compute instances, storage, databases, and more.

6. **IoT Device Monitoring:**
Grafana can be used to monitor Internet of Things (IoT) devices and sensors. It helps visualize data from sensors, track device statuses, and identify anomalies or trends.

7. **Container Orchestration Monitoring:**
Grafana can monitor container orchestration platforms like Kubernetes and Docker Swarm. It helps track metrics related to container resource utilization, pod statuses, and cluster health.

8. **Service Monitoring:**
Grafana enables monitoring of microservices and distributed applications. It helps visualize metrics related to service availability, response times, and error rates.

9. **Security Monitoring:**
Grafana can visualize security-related metrics such as authentication attempts, failed logins, and intrusion detection system (IDS) alerts.

10. **Custom Application Metrics:**
Grafana can be used to monitor custom applications by integrating it with your codebase and reporting custom metrics relevant to your application's behavior and performance.

-----

### 9) Can we see different Servers CPU comparison in Grafana
- Yes, you can definitely compare the CPU usage of different servers in Grafana
- Grafana allows you to create interactive and customizable dashboards where you can visualize and compare metrics from multiple servers, including CPU usage. Here's how you can achieve this: