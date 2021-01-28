# Template for securing containers

Code mostly taken from
https://github.com/sclorg/mysql-container


# How to build the container
make build TARGET=centos8 VERSIONS=8.0

# How to run the container, the hash is the hash you get from the build process
docker run --mount type=volume,source=mysql_data_test1,target=/var/lib/mysql -p 3306:3306 --name test_mysql_001 -e MYSQL_USER=changeme -e MYSQL_PASSWORD=changeme -e MYSQL_DATABASE=changeme -it 305def1034fdeed213bc212eb3cc5ea4b5cde24609bc7c2876adea0acfff5d18

# Apply the mysql security settings by running the external
https://mariadb.com/kb/en/mysql_secure_installation/

