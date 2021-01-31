#!/bin/bash

mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON \`myapp_development\`.* TO '${MYSQL_USER}'@'%'"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON \`myapp_test\`.* TO '${MYSQL_USER}'@'%'"
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON \`myapp_production\`.* TO '${MYSQL_USER}'@'%'"
