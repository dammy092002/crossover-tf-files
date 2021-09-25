#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
sudo yum install -y httpd
sudo yum install -y git
sudo systemctl start httpd
sudo systemctl enable httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
git clone https://github.com/dammy092002/sample_app_db.git
cp sample_app_db/dbinfo.inc /var/www/dbinfo.inc
cp sample_app_db/SamplePage.php /var/www/html/SamplePage.php