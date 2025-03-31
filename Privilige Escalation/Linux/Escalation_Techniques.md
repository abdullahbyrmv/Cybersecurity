# Privilige Escalation Steps in Linux #
## Reconnaissance ##
1. `hostname` command to view information about hostname. We can utilize this information later in systems where providing information about hostname is required.

2. `uname -a` command give us kernel and version information of operating system.

3. `cat /proc/version` command can be utilized to gain information about kernel and version of operating system in case `uname -a` command do not work.

4. `cat /etc/issue` command to view the linux distribution of target.

5. `ps -A` is used to view all the running processes in system. This information can be utilized to gain access to system in case we find vulnerability of a running process.

6. `env` is used to view the used environment.

7. `sudo -l` command should be tested to see whether it can be used or not. Sometimes administrators forget to configure password authentication for `sudo -l` command.

8. `grep -Ev "nologin|false" /etc/passwd` command can be used to view all the users of linux system. We can also see which shell these users are utilizing.

9. `history` command is used to view the history of commands used in linux system.

10. `ifconfig / ip route` commands are used to view the ip addresses of system and routes within system to see which ip addresses our target used.

11. `netstat -lnput` command is used to view the open ports in system and which services are used in open ports.

12. `netstat -ano` command is used to view all active internet connections in system.

13. `find / -perm -u=s -type f 2>/dev/null` is used to scan the whole system and find all the application in system which contains superuser bit. These applications can be utilized to escalate our privilige to root. We can use GTFO Bins website to view which applications can be utilized to escalate our privilige.

14. `cat /etc/exports` command is used to view which files are shared by using NFS (Network File Share).

15. `getcap -r /` comand is used to view the capabilities of applications in system. After getting list of file with capabilites, we can use GTFO Bins to see which capabilities we can utilize to escalate our priviliges.

### Tools that automate these steps ###

1. `Linpeas`
2. `LSE (Linux Smart Enumeration)`
3. `LinEnum`