Introduction to Command Line

# Permissions
When you open up Terminal or otherwise connect to a server, you are logging in to the command line. Your user account determines which directory you are put in when you connect, and it also determines what permissions and access you have to files and directories.

In Unix and Linux file systems, permissions are divided into two parts: ownership and access types. There are three levels of ownership: **user**, **group**, and **other**; and three access types: **read**, **write**, and **execute**. Each level of ownership can be granted any or all of the access types, which brings the total number of permission combinations to 2**9, or 512.

# Interpreting Permissions
```shell
# +-------- Directory or not
# |  +------- User's Read, Write, Execute access
# |  |   +------- Group's Read, Write, Execute access
# |  |   |   +----- Other's Read, Write, Execute access
# |  |   |   |   +--- The name of the assigned user
# |  |   |   |   |     +--- The name of the assigned group
# |  |   |   |   |     |
# d|rwx|rwx|rwx user group
```
Permissions are not bestowed upon the user or groups. Rather, files and directories are assigned groups and users with access permissions.

# Setting Permissions with `chmod` (Change Mode)
In order to change the permissions of a file or directory, you must be its owner, root, or use `sudo`.
```shell
% chmod +r sample.txt
% chmod +w sample.txt
% chmod +x sample.txt
% chmod u+r sample.txt # u: user
% chmod g+r sample.txt # g: group
% chmod o+r sample.txt # o: other
% chmod a+r sample.txt # a: all
```
```
0 No permission granted
1 Can execute
2 Can write
3 Can write & execute (3 = 2 + 1)
4 Can read
5 Can read & execute (5 = 4 + 1)
6 Can read & write (6 = 4 + 2)
7 Can read, write, & execute (7 = 4 + 2 + 1)
```
```shell
% chmod 000 sample.txt

% ls -l sample.txt
---------- 1 bob admin 0B Jan 15 00:00 sample.txt

% chmod 777 sample.txt

% ls -l sample.txt
-rwxrwxrwx 1 bob admin 0B Jan 15 00:00 sample.txt

% chmod 754 sample.txt

% ls -l sample.txt
-rwxr-xr-- 1 bob admin 0B Jan 15 00:00 sample.txt
```

# Users and Groups
Users can belong to multiple groups, and groups can have multiple users.
Users have access to files and directories based on the groups to which the users belong.

# Root User and Sudo
The root user is the super user—it can read, write, and delete any file.

To switch to the root user:
```shell
% su -
```

Although the root user can read, write, and delete (almost) any file, it cannot execute just any file. A file can only be executed if it has the execute permission granted. Then, in the case of the root user, it doesn't matter to whom the permission is granted—so long as it is granted to user/group/other, root can execute it.

## `sudo`
`sudo` stands for "superuser do". It is a command line utility that allows permitted users to execute commands with elevated privileges. (Claude 3.5 Sonnet)

While a user can log in as root directly, it is more common to use `sudo` to perform actions that require root privileges.

```shell
# An exmaple:
% sudo reboot
```

## Using `sudo` to Log In as Root
```
% sudo su
Password:
sh-3.2# exit 
# Exit out the root user session
```