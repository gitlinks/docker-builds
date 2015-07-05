build:
	docker pull mysql:5.7.7

run:
	docker rm mysql-data 2>/dev/null || true
	docker rm -f mysql 2>/dev/null || true
	docker create -v /var/lib/mysql --name mysql-data mysql /bin/true
	docker run -d --volumes-from mysql-data --name mysql -e MYSQL_ROOT_PASSWORD=apassword mysql:5.7.7