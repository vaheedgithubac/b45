# Sample Microservice Application

Stan's Robot Shop is a sample microservice application you can use as a sandbox to test and learn containerised application orchestration and monitoring techniques. It is not intended to be a comprehensive reference example of how to write a microservices application, although you will better understand some of those concepts by playing with Stan's Robot Shop. To be clear, the error handling is patchy and there is not any security built into the application.

You can get more detailed information from my [blog post](https://www.instana.com/blog/stans-robot-shop-sample-microservice-application/) about this sample microservice application.

This sample microservice application has been built using these technologies:
- NodeJS ([Express](http://expressjs.com/))
- Java ([Spark Java](http://sparkjava.com/))
- Python ([Flask](http://flask.pocoo.org))
- Golang
- PHP (Apache)
- MongoDB
- Redis
- MySQL ([Maxmind](http://www.maxmind.com) data)
- RabbitMQ
- Nginx
- AngularJS (1.x)

The various services in the sample application already include all required Instana components installed and configured. The Instana components provide automatic instrumentation for complete end to end [tracing](https://docs.instana.io/core_concepts/tracing/), as well as complete visibility into time series metrics for all the technologies.

To see the application performance results in the Instana dashboard, you will first need an Instana account. Don't worry a [trial account](https://instana.com/trial?utm_source=github&utm_medium=robot_shop) is free.


# Architecture Diagram.

![Robot Shop Architecture Diagram](https://gitlab.com/d45/robo-shop/-/raw/master/architecture.png?inline=false) 


# Installations.

## Install MongoDB 

  * Install MongoDB

```
# curl https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/mongodb/install.sh | bash 
```

  * Load Mongo Schema 

```
# cd robo-shop/mongo 
# mongo localhost catalogue.js
# mongo localhost users.js
```

## Install MariaDB 

  * Install MySQL

 ```
# curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/mysql/install-5.7.sh | bash 
 ```

  * Create Database 

  Run the following command in `mysql` prompt.

```
# mysql -uroot -ppassword
```

```
create database cities;
grant all privileges on cities.* to 'shipping'@'%' identified by 'secret';
grant all privileges on cities.* to 'shipping'@'localhost' identified by 'secret';
```

  * Load Schema 

```
# cd robo-shop/mysql/scripts
# gunzip 10-dump.sql.gz 
# mysql -ushipping -psecret <10-dump.sql
```


  * Install Redis 

```
# yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm  -y 
# yum --enablerepo=remi install redis -y 
# systemctl enable redis 
# systemctl start redis
```

  * Install RabbitMQ 

```
# curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/rabbitmq/install.sh | bash
```

  * Install NodeJS 

```
# curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/nodejs/install.sh | bash 
```

  * Run Catalouge MicroService

```
# cd robo-shop/catalogue
# npm install
# node server.js &>/tmp/catalouge.log & 
```

  * Run User MicroService

```
# cd robo-shop/user
# npm install
# node server.js &>/tmp/user.log &
```

  * Run Cart MicroService

```
# cd robo-shop/cart
# npm install 
# node server.js &>/tmp/cart.log &
```

  * Install Maven 

```
# curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/maven/install.sh | bash 
```

  * RUn Shipping MicroService

```
# cd robo-shop/shipping
# mvn package
# java -jar target/shipping-1.0-jar-with-dependencies.jar &>/tmp/shipping.log &
```

  * Install Python 3

```
# yum install python36 gcc python3-devel -y 
```

  * Run payments MicroService

```
# pip3 install -r requirements.txt
# uwsgi --ini payment.ini &>/tmp/payments.log &
```

  * Install GO 

```
# cd /opt
# curl https://dl.google.com/go/go1.13.7.linux-amd64.tar.gz | tar -xz
# ln -s /opt/go/bin/go /bin/go 
# ln -s /opt/go/bin/gofmt /bin/gofmt
# go version
```

  * Run Dispath MicroService 

```
# export GOBIN=/opt/go/bin
# curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
# cd robo-shop/dispatch
# mkdir -p /go/src/github.com/instana/dispatch
# cp src/main.go /go/src/github.com/instana/dispatch
# export GOPATH=/go
# cd /go/src/github.com/instana/dispatch
# dep init
# dep ensure 
# go build -o bin/gorcv
```

