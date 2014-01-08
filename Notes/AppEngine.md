
php54 executable - /usr/local/opt/php54/bin
mysql executable - /usr/local/opt/mysql/bin

start local mysql
mysql.server start
mysql -u root
mysql.server stop

run local server (a mysql server need to be running)
~/Sites/google_appengine/dev_appserver.py --php_executable_path=/usr/local/opt/php54/bin/php-cgi ~/Sites/Blog 

command to update the site
~/Sites/google_appengine/appcfg.py update ~/Sites/Blog
