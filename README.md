# mongo

MongoDB Tools - my small toolkit for mongo

## user_backup_pre.sh (mongodump)

[DirectAdmin](http://directadmin.com) custom backup script hook for dumping users mongo db right before packing user.

**Usage:**

	$ wget -O /usr/local/directadmin/scripts/custom/user_backup_pre.sh "https://raw.github.com/kolobus/mongo/master/user_backup_pre.sh"  
	$ chmod +x /usr/local/directadmin/scripts/custom/user_backup_pre.sh  
	$ nano /usr/local/directadmin/scripts/custom/user_backup_pre.sh
