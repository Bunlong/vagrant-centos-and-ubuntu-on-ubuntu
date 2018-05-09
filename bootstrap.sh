# update system
echo "---------------- Starting update system ----------------"
sudo yum update -y
echo "--------------------------------------------------------"

sudo yum install -y wget

# install git
echo "---------------- Starting install git ----------------"
sudo yum install -y git
echo "------------------------------------------------------"

# install latest apache2 
echo "---------------- Starting install apache2 ----------------"
sudo yum install -y httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
echo "----------------------------------------------------------"

# install latest php
echo "---------------- Starting install php 7.2 ----------------"
sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
sudo yum install -y yum-utils
sudo yum update -y
sudo yum-config-manager --enable remi-php72 -y
sudo yum install -y php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo php-mysqlnd php-pdo
sudo systemctl restart httpd.service
echo "----------------------------------------------------------"

# install mysql
echo "---------------- Starting install mysql ----------------"
sudo yum install -y mariadb-server mariadb
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
sudo systemctl restart httpd.service
echo "--------------------------------------------------------"

echo "---------------- Starting install composer ----------------"
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo "-----------------------------------------------------------"
