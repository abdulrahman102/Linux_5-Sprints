## **JENKINS TASK 3**

## **1- what is the benefit of using master-slave architecture rather than building on master only ?**
```diff
- The master-slave architecture provides better scalability, fault tolerance, performance, and flexibility in comparison to depending solely on a single master system as it allows for parallel processing and workload distribution across multiple slave systems and ensures continuity of service even in the presence of failures and offers scalability by allowing additional slave systems to be added as the demand or workload increases.
```

-----

## **2- what is different between authorization and authentication ?**

- ### Authentication "Who are you?": The process of verifying the identity of a user or entity. It ensures that the individual or system claiming a particular identity is indeed who or what it claims to be

- ### Authorization "What are you allowed to do?" :The process of granting or denying access rights and permissions to authenticated users or entities, that's means the authorization proccess is dependent on the process of authentication

-----

## **3- make jenkins-shared-library and make your jenkinsfile which you used in lab2 to point to this library**

-----

## **4- try to make new slave as container or ec2 server and configure master to use it**
