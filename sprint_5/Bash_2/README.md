### **SCRIPT TO CREATE LOGS AND SEND IT TO SERVER USING SSH**  
#### **The Script : (The original file is uploaded)**  
  
    #!/bin/bash


    function ServerCredintails(){
    read -p "Enter Server User: " SERVER_USER
    read -p "Enter IP Address: " IP
    read -p "The Distantion Of (where you want to copy the file): " SERVER_DIR 
    }

    function CheckExitCode(){
    if (($?==0));then
    echo "SUCCESSFULL COMANND"
    else
    echo "Error : Check $1 file"
    fi
    }

    function CompressFiles(){
    if [[ -f ps.log && -f ram.log && -f disk.log && -f /var/log/dmesg ]]; then
    echo "FILES EXISTED!"
    tar -czvf logs.tar.gz ps.log  ram.log disk.log /var/log/dmesg
    echo "FILES COMPRESSED!"
    else
    CheckExitCode /var/log/dmesg
    fi
    }

    function CreateLogs(){
    ps -f -u $USER > ./ps.log 2> ./ps.error
    CheckExitCode ps.error

    free > ./ram.log 2> ./ram.error
    CheckExitCode ram.error


    df -h | awk '{printf "%-10s%-20s\n", substr($0, 1 ,10), substr($0, 33, 50)}' > ./disk.log 2> ./disk.error
    CheckExitCode disk.error
    CompressFiles
    }

    CreateLogs
    ServerCredintails
    rsync -avzp --ignore-existing logs.tar.gz ahmed@127.0.0.1:$SERVER_HOME_DIR



### **Screenshots:**  
- **Server before running script**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_5/Bash_2/imgs/List_server_before_run.png)  
- **Script Running (Client-Side)**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_5/Bash_2/imgs/Run_command.png)  
- **Server after runnning script**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_5/Bash_2/imgs/List_server_after_run.png)  




