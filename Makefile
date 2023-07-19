hello:
	g++ -o hello HelloWorld/HelloWorld.cpp
install:
	bash downloadgithub.sh
	chmod -R a+w HelloWorld
unistall:
	chmod -R a+w HelloWorld
	rm -rf HelloWorld
	rm -rf hello
service-GNU-Build:
	bash install-service.sh
	sudo apt-get install iptables
	sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
