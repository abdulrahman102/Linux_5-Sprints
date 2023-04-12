###**1. Create a user account with the following attribute**   
###** username: ahmed**
###** Fullname/comment: ahmed ali**
###** Password: ahmed**

2. Create a user accou	nt with the following attribute
 Username: baduser
 Full name/comment: Bad User
 Password: baduser

3. Create a supplementary (Secondary) group called pgroup with group ID of 30000

4. Create a supplementary group called badgroup

5. Add ahmed user to the pgroup group as a supplementary group

6. Modify the password of ahmed's account to password

7. Modify ahmed's account so the password expires after 30 days

8. Lock bad user account so he can't log in

9. Delete bad user account

10. Delete the supplementary group called badgroup.

13. Create a folder called myteam in your home directory and change its permissions to read only for the owner.

14. Log out and log in by another user

15. Try to access (by cd command) the folder (myteam)

16. Using the command Line
 * Change the permissions of oldpasswd file to give owner read and write permissions and for group write and execute and execute only for the others (using chmod in 2 different ways)
 * Change your default permissions to be as above.

Excution can’t be applied as a default for files but it can be applied for folders

  What is the maximum permission a file can have, by default when it is just created? And what is 	that for directory.

The system default permission values are 777 (rwxrwxrwx) for folders and 666 (rw-rw-rw-) for files.
• The default mask for a non-root user is 002, changing the folder permissions to 775 (rwxrwxr-x), and file permissions to 664 (rw-rw-r--).
• The default mask for a root user us 022, changing the folder permissions to 755 (rwxr-xr-x), and file permissions to 644 (rw-r--r--).


* Change your default permissions to be no permission to everyone then create a directory and a file 

17. What are the minimum permission needed for:
 * Copy a directory (permission for source directory and permissions for target parent directory)

	Source: read if empty. read and execution if not empty.
	target: write and execution

 * Copy a file (permission for source file and and permission for target parentdirectory)

	Source: read
	target: write and execution


 * Delete a file
	file permission doesn’t affect but its parent folder permission is write and execution.

 * Change to a directory
	only execution permission


 * List a directory content (ls command)
	read will give permission to list content but not the meta data, to use ls with full access it needs read and execution permission

 * View a file content (more/cat command)
	read only permission

 * Modify a file content
	write permission


18. Create a file with permission 444. Try to edit in it and to remove it? Note what happened.
	Adding content to read-only file is not permitted, but removing it is permitted but will ask the user first.
	
19. What is the difference between the “x” permission for a file and for a directory?
	X for file : means that the user is permitted to execute the script inside the file or its content
	X for folder : means accessing the folder using cd command and see the meta data related to it, 	execution permission is important for folders and associated with write permission
