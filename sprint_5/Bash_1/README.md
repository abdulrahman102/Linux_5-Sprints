### **Uploaded the original and the solution scripts**  
#### **The Script :**  
    
    #!/bin/bash  
    echo "This script will print variables, and execute Linux commands"  
 
    #There will be errors within the script, it needs to be modified to run and the meet a specific output  
    #---modified---  
    #Print env details, including current directory,current user, and list files in the home directory with the addition to the exit code for each command  
    #Use functions for each command including exit code  
    #Provide screenshots of the output  
    #---DONE---  
    #Enter rest of code here  

    function current_directory(){  
    echo $PWD  
    echo -e "Exit code = $? \n \n"  
    }  

    function current_user(){  
    echo $USER  
    echo -e "Exit code = $? \n \n"  
    }  

    function list_files(){  
    ls  
    echo -e "Exit code = $? \n \n"  
    }  


    echo -e "\n"  
    current_directory  
    current_user  
    list_files  

#### **Screenshots :**
    ![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_5/Bash_1/imgs/Code_screenshot.png)  
    ![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_5/Bash_1/imgs/Output_screenshot.png)  

