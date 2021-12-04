@echo off
call mvn clean package
call docker build -t fr.grin/TPBanque .
call docker rm -f TPBanque
call docker run -d -p 9080:9080 -p 9443:9443 --name TPBanque fr.grin/TPBanque