
### **1. Create a user account with the following attribute**   
####  username: ahmed 
####  Fullname/comment: ahmed ali  
####  Password: ahmed  
- useradd or adduser both can be used to add a new user. adduser is a high level command used in new versions like ubuntu as it's more interactive and taked account information, on the other hand useradd takes account information by options and requires all account inputs as it doesn't have defaults.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/ahmed_user_add.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/ahmed_user_add2.png)  
### **2. Create a user accou nt with the following attribute**  
####  Username: baduser  
####  Full name/comment: Bad User  
####  Password: baduser  
- using -p with useradd reqires giving the encrypted version of password so it's not prefered to use it.
The default shell script if user didn't give it is sh  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/baduser_user_add.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/baduser_user_add_2.png)  

### **3. Create a supplementary (Secondary) group called pgroup with group ID of 30000**  
- same as user, differnce between groupadd and addgroup is in the interactivity level  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/pgroup_add.png)  

### **4. Create a supplementary group called badgroup**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/badgroup_add.png)  

### **5. Add ahmed user to the pgroup group as a supplementary group**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/add_ahmed_pgroup.png)  

### **6. Modify the password of ahmed's account to password**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/ahmed_password_change.png)  

### **7. Modify ahmed's account so the password expires after 30 days** 
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/set_expire_date.png)  

### **8. Lock bad user account so he can't log in**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/baduser_locked.png)  

### **9. Delete bad user account**  
- same as userand group , differnce between userdel and deluser is in the interactivity level as deluser deletses the account entirly with all it dependencies like the home directory, and that's not the case with userdel  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/delete_baduser.png)  

### **10. Delete the supplementary group called badgroup.** 
- - same as user, differnce between groupdel and delgroup is in the interactivity level  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/delete_group.png)  

### **11. Create a folder called myteam in your home directory and change its permissions to read only for the owner.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/chmod.png)  

### **12. Log out and log in by another user**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/new_login.png)  

### **13. Try to access (by cd command) the folder (myteam)**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/myteam.png)  

### **14. Using the command Line**  
#### *** Change the permissions of oldpasswd file to give owner read and write permissions and for group write and execute and execute only for the others (using chmod in 2 different ways)**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/chmod_2_ways.png)  

#### ** Change your default permissions to be as above.**  
Excution can’t be applied as a default for files but it can be applied for folders  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/umask.png)  

#### **  What is the maximum permission a file can have, by default when it is just created? And what is that for directory.**  
The system default permission values are 777 (rwxrwxrwx) for folders and 666 (rw-rw-rw-) for files.  
The default mask for a non-root user is 002, changing the folder permissions to 775 (rwxrwxr-x), and file permissions to 664 (rw-rw-r--).  
The default mask for a root user us 022, changing the folder permissions to 755 (rwxr-xr-x), and file permissions to 644 (rw-r--r--).  

#### ** Change your default permissions to be no permission to everyone then create a directory and a file**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/no_permission.png)  

### **15. What are the minimum permission needed for:**  
#### ** Copy a directory (permission for source directory and permissions for target parent directory)**  
- **Source**: read if empty. read and execution if not empty.  
- **Target**: write and execution  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/copy_directory1.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/copy_directory2.png)  

#### **  Copy a file (permission for source file and and permission for target parentdirectory)**  
- **Source**: read  
- **Target**: write and execution  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/copy_file.png)  

#### ** Delete a file**  
- file permission doesn’t affect but its parent folder permission is write and execution.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/remove_file.png)  

#### ** Change to a directory**  
- only execution permission  


#### ** List a directory content (ls command)**  
- read will give permission to list content but not the meta data, to use ls with full access it needs read and execution permission  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/ls.png)  

#### ** View a file content (more/cat command)**  
- read only permission  
 

#### ** Modify a file content**  
- write permission  

### **16. Create a file with permission 444. Try to edit in it and to remove it? Note what happened.**  
- Adding content to read-only file is not permitted, but removing it is permitted but will ask the user first.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/add_text_readonly.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_7/imgs/remove_file_readonly.png)  
	
### **17. What is the difference between the “x” permission for a file and for a directory?**  
- X for file : means that the user is permitted to execute the script inside the file or its content  
- X for folder : means accessing the folder using cd command and see the meta data related to it, execution permission is important for folders and associated with write permission  
