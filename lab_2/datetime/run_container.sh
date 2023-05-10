cd ~/lab_2/datetime

mvn clean package

docker rm -f datetime-app

docker build -t datetime-app .

docker run -d -p 8080:8080 datetime-app

