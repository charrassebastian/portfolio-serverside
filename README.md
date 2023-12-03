# Portfolio Serverside

This is the serverside code and configurations for my portfolio.

It can be deployed using Docker and Kubernetes. Once deployed, tha data present on a sql file on the database folder needs to be loaded on the database for the project to work properly.

kubectl cp portfolio.sql <pod_id>:/

Then inside the pod:

mysql -p

It will prompt you to enter the password

Now execute:

create database portfolio;
exit

After that you can load the data into the database:

mysql -p portfolio < portfolio.sql

It will prompt you to enter the password

And now the data is on the database
