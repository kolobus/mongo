#!/bin/sh

# /usr/local/directadmin/scripts/custom/user_backup_pre.sh
# Mihail Fedorov <http://mihailfedorov.ru>
# License: MIT <http://mf.mit-license.org>

# NB:
# I was thinking about using prefix variable instead of hardcoded prefix "mongo."
# but "rm -rf" with something hardcoded in it makes me feel SAFE :)

# Host of mongodb
host=127.0.0.1
# Admin user (acces to any database)
root=evil
# Admin user pass (acces to any database)
rootpass=VerySecretPass
# Admin user source DB (default will be ok)
rootdb=admin

# Go

mongodump --host $host --username $root --password $rootpass --authenticationDatabase $rootdb --db $username --out /home/$username/mongo.$username/ > /dev/null 2> /dev/null

tar -cvzf /home/$username/mongo.$username.tar.gz /home/$username/mongo.$username > /dev/null 2> /dev/null

rm -rf /home/$username/mongo.$username/ > /dev/null 2> /dev/null

chown -R $username:$username /home/$username/mongo.$username.tar.gz > /dev/null 2> /dev/null

exit 0;