## **DOCKER TASK 2**

### **1- Run an instance of nginx:alpine with a name nginx and map port 8080 on the container to 38282 on the host.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/1.png)  

### **2- create ubuntu image and check the size of it.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/2.png)

### **3- Run a container named blue-app using image kodekloud/simple-webapp and set the environment variable APP_COLOR to blue. Make the application available on port 38282 on the host. The application listens on port 8080.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/3_1.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/3_2.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/3_3.png)  

### **4- Deploy a mysql database using the mysql image and name it mysql-db Set the database password to use db_pass123 then inspect it to check the value**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/4_1.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/4_2.png)

### **5- pull the code from https://github.com/sabreensalama/simple-flask-app/tree/main and create a docker file for this flask app.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/5_1.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/5_2.png)

### **6- Create a volume called mysql_data, Run a mysql container again, but this time map a volume to the container so that the data stored by the container is stored at /opt/data on the host.Use the same name: mysql-db and same password: db_pass123 as before. Mysql stores data at /var/lib/mysql inside the container.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/6_1.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/Docker/Docker_2/6_2.png)