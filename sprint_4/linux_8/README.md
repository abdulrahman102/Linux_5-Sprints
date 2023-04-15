#### **1. Using vi write your CV in the file mycv. Your CV should include your name, age, school, college, experience,…**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/1_vim_mycv1.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/2_vim_mycv2.png)  

------------  

#### **2. Open mycv file using vi command then: Without using arrows state how to:**  
##### **a. Move the cursor down one line at time.**  
- Press j button in command mode  

##### **b. Move the cursor up one line at time.**  
- Press k button in command mode  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/3_up_down_cursor.gif)  
##### **c. Search for word age**  
- enter /age or ?age in command mode  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/4_searching_string.png)  
##### **d. Step to line 5 (assuming that you are in line 1 and file is more than 5 lines).**  
- We can use 5G in command mode or :5 in last line mode  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/5_move_to_line.gif)  
##### **e. Delete the line you are on and line 5.**  
- To delete line you’re in Press dd in command mode, and to delete the fifth line we enter :5d in last line mode  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/6_delete_lines.gif)  
##### **f. How to step to the end of line and change to writing mode in one-step.**  
-  Press A in command mode  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/7_move_to_line_end.gif)  

------------


#### **3. List the available shells in your system.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/8_diplay_shells.png)  

------------


#### **4. List the environment variables in your current shell.**  
- printenv and env commands can be used to list all environmental variables, while declare and set commands can be used to list all environmental variables and linux system variables and functions  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/9_list_variables1.png)
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/10_list_variables2.png)

------------


#### **5. List all of the environment variables for the bash shell.**  
- To list the default bash environment variables, we can start a new bash shell and use printenv or env before declaring or editing any environment variables. The default value of the variable can be fixed across all next shells by adding the value to the bash.bashrc file.  
  
------------

#### **6. What are the commands that list the value of a specific variable?**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/11_variable_values.png)  

------------

#### **7. Display your current shell name.**  
- SHELL variable contains the path to the default shell for the current user, not necessarily the shell that is currently running. If you have changed the shell after logging in, SHELL will still show the original default shell. To see the current running shell, we can use the ps -p $$
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/12_current_shell.png)  

------------
------------  

#### **1. List the user commands and redirect the output to /tmp/commands.list**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/13_redirect.png)  

------------

#### **2. Count the number of user commands**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/14_commands_count.png)  

------------

#### **3. Get all the users names whose first character in their login is ‘g’**.  
- Who command can also be user to get the current logged users  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/15_usernames_g.png)  

------------
 
#### **4. Get the logins name and full names (comment) of logins starts with “g”.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/16_name_comments_g.png)  

------------

#### **5. Save the output of the last command sorted by their full names in a file.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/17_sorting.png)  

------------

#### **6. Write two commands: first: to search for all files on the system that named.**  
- .bash_profile. Second: sorts the output of ls command on / recursively, Saving their output and error   in 2 different files and sending them to the background.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/18_2commands.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/19_2commands2.png)  

------------  

#### **7. Display the number of users who is logged now to the system.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/20_user_counts.png)   

------------

#### **8. Display lines 7 to line 10 of /etc/passwd file**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/21_7_10_lines.png)  

------------

#### **9. What happens if you execute:**  
##### **a. cat filename1 | cat filename2**
- It will cat the filename2 only cause the output of the first command doesn’t redirected anywhere  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/22_catfiles.png)  
##### **b. ls | rm**  
- Nothing happens because rm expect file names as argument not standard inputs  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/23_ls_rm.png)  
##### **c. ls /etc/passwd | wc –l**  
- It will give the count of lines of ls output not the count of lines of the passwd file  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/24_wc_l.png)  

------------

#### **10. Issue the command sleep 100.**  

#### **11. Stop the last command.**  

#### **12. Resume the last command in the background**  

#### **13. Issue the jobs command and see its output.**  

#### **14. Send the sleep command to the foreground and send it again to the background.**  

#### **15. Kill the sleep command.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/25_10_11_12_13_14_15.png)  

------------

#### **16. Display your processes only**  
- We can use ps -u user_name -f , or use pipe to grep the wanted lines.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/26_my_processes.png)  

------------

#### **17. Display all processes except yours**  
- We can use ps –deselect -u user_name -f , or use pipe to grep and remove the unwanted lines.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/27_not_my_process.png)  

------------

#### **18. Use the pgrep command to list your processes only**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/28_pgrep.png)  

------------

#### **19. Kill your processes only.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/29_pkill.gif)  

------------

#### **20.Which command gives an overview of all current shell jobs ?**  
- jobs  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/30_jobs.png)  

------------

#### **21.How do you stop the current shell job to continue running it in the background?**  
- Ctrz + z then bg with its job number or pid
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/31_fg_bg.png)  

------------

#### **22.Which keystrokes combination can you use to cancel the current shell job ?**  
- Ctrl + c  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/32_ctrl_c.png)  

------------

#### **23.A user is asking you to cancel one of the jobs he has started. You cannot access the shell user currently is working from. What can you do to cancel his job anyway ?**  
- Start a new shell then list the process or use pgrep to get only process and get its uid and stop it, if not permitted use sudo.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/33_case_study.png) 

------------

#### **24.Which command would you use to show parent-child relationship between the processes?**  
- pstree  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/34_pstree.png)  

------------

#### **25.Which command enables you to change priority of PID 1234 to a higher priority ?**  
- Renice  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_4/linux_8/imgs/35_renice.png)  

------------

#### **26.On your system, 20 dd processes are currently running, What is the easiest way to stop all of them ?**  
- Pkill -9 or -15 dd  

------------

#### **27.Which command enables you to stop the command with the name mycommand ?**  
- Kill -9 or -15 mycommand  

------------

#### **28.Which command do you use from top to kill a process ?**  
- Press k then enter PID that you want to kill  

------------

#### **29.What is required to select performance profile that best matches your system needs ?**  
- Hardware capacity  
- Type of workload  
- Power management  
- System usage type  

  
