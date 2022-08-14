#! /bin/bash
yum update -y
yum install python3 -y
pip3 install flask
pip3 install flask_mysql
yum install git -y
TOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
cd /home/ec2-user 
mkdir phonebook && cd phonebook
wget https://raw.githubusercontent.com/Ilkeradak/202-Terraform-Phonebook-Application-deployed-on-AWS/main/dbserver.endpoint
wget https://raw.githubusercontent.com/Ilkeradak/202-Terraform-Phonebook-Application-deployed-on-AWS/main/phonebook/phonebook-app.py
mkdir templates && cd templates
wget https://raw.githubusercontent.com/Ilkeradak/202-Terraform-Phonebook-Application-deployed-on-AWS/main/phonebook/templates/add-update.html
wget https://raw.githubusercontent.com/Ilkeradak/202-Terraform-Phonebook-Application-deployed-on-AWS/main/phonebook/templates/delete.html
wget https://raw.githubusercontent.com/Ilkeradak/202-Terraform-Phonebook-Application-deployed-on-AWS/main/phonebook/templates/index.html
python3 /home/ec2-user/phonebook/phonebook-app.py