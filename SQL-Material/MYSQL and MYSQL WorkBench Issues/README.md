# MySQL and MySQL Workbench Issues


## MySQL downloads

[MYSQL 5.7](https://dev.mysql.com/downloads/mysql/5.7.html#downloads)
[MySQL Workbench](https://www.mysql.com/products/workbench/)

## Setup Issues


### Mac

* System Preferences > Mysql 

* Stop MySQL server

* Re-run MySQL 

* Remove MYSQL completely:

[Source](https://gist.github.com/vitorbritto/0555879fe4414d18569d)


From the source above, 

```
Open the Terminal

Use mysqldump to backup your databases

Check for MySQL processes with: ps -ax | grep mysql

Stop and kill any MySQL processes

Analyze MySQL on HomeBrew:

brew remove mysql
brew cleanup
Remove files:

sudo rm /usr/local/mysql
sudo rm -rf /usr/local/var/mysql
sudo rm -rf /usr/local/mysql*
sudo rm ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*

```


## Notes:

* If you encounter a MYSQL 1045 error, then use this [stack overflow article]
(https://stackoverflow.com/questions/489119/mysql-error-1045-access-denied)


* If your MySQL Workbench UPDATE commands are not working, then run this line:

```
SET SQL_SAFE_UPDATES = 0;
```

[Source](https://stackoverflow.com/questions/11448068/mysql-error-code-1175-during-update-in-mysql-workbench)

* A way to purge MySQL from Mac computer: [Source](https://help.ubuntu.com/community/MysqlPasswordReset)

```
sudo apt-get --purge remove mysql-server mysql-common mysql-client

sudo apt-get install mysql-server mysql-common mysql-client
#In the next step be sure to chance the your-new-password with the password #you want!


mysqladmin -u root password your-new-password
sudo /etc/init.d/mysql restart

mysql -u root -p

```


* Download [Homebrew](https://brew.sh/) (Mac): 

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```