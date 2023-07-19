start:
	g++ -o start HelloWorld/HelloWorld.cpp

install:
	bash downloadgithub.sh
	chmod -R a+w HelloWorld

unistall:
	rm -rf HelloWorld
	rm -rf hello
	sudo systemctl stop Build-Service.service
	rm /etc/systemd/system/Build-Service.service
	rm /usr/local/bin/Build-Service.sh
	sudo iptables -A INPUT -p tcp --dport 8080 -j DROP

install-service:
	bash install-service.sh
	cp Build-Service.sh /usr/local/bin
	sudo apt-get install iptables
	sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
	sudo systemctl daemon-reload
	sudo systemctl start Build-Service.service
