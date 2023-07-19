hello: HelloWorld.cpp
	cd GNU-Build/
	g++ -o hello HelloWorld.cpp
install:
	bash downloadgithub.sh
unistall:
	chmod -R a+w GNU-Build
	rm -rf GNU-Build
	rm -rf hello
service-GNU-Build:
	bash install-service.sh
	sudo apt-get install iptables
	sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
