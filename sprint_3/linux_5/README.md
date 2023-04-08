**1. Install CentOS /RHEL**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/Ubuntu_desktop.png)  
  
**2. What is the difference between cat and more command?**  
cat: views the content of selected file as a block in the terminal.    
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/cat.gif)  
more : views the content of file as a page by page (window size) that you can scroll up and down and when it ends it get out of file.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/more.gif)  
  
**3.What is the difference between rm and rmdir using man?**  
rm : used to delete files and with -r (recursive option)  it is used to delete folders with its contents.  
rmdir : used to delete only empty files.  
  
**4. Create the following hierarchy under your home directory:**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/HIRERACHY_question.png)  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/Directories_hirerachy.png) 
  
**a. Remove dir11 in one-step. What did you notice?  And how did you overcome that?**  
dir11 can’t be deleted using mkdir cause it’s not empty directory, so there is two solution to overcome this issue, first one is by deleting the directory content first then delete the directory itself, the second one - and the more convenient one- is to use rm -r which delete the directory recursively.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/remove_dir11.png)  
  
**b. Then remove dir12 using rmdir –p command. State what happened to the hierarchy (Note: you are in your home directory).**  
rmdir -p is used to remove the directory and parent directories for it, so the dir1 directory has been also removed.  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/remove_dir12.png)  
  
**c. The output of the command pwd was /home/user. Write the absolute and relative path for the file mycv**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/relative_absolute.png)  
  
**5. Copy the /etc/passwd file to your home directory making its name is mypasswd.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/copy_etc.png)  
  
**6. Rename this new file to be oldpasswd.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/rename_oldpasswd.png) 
  
**7. You are in /usr/bin, list four ways to go to your home directory**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/4methods_of_cd.png)  
  
**8. List Linux commands in /usr/bin that start with letter w**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/list_w.png)  
  
**9. Display the first 4 lines of /etc/passwd**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/head.png)  
  
**10. Display the last 7 lines of /etc/passwd**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/tail.png)  
  
**11. Display the man pages of passwd the command and the file sequentially in one command.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/sequentially%201.png)  
  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/sequentially%202.png)  
  
**12. Display the man page of the passwd file.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/man_page.png)  
  
**13. Display a list of all the commands that contain the keyword passwd in their man page.**  
![](https://github.com/abdulrahman102/Sprints_tasks/blob/master/sprint_3/linux_5/imgs%20and%20gifs/search_man.png)
