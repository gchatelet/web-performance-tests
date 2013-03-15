#!/bin/bash
rm -f *.class
javac -cp org.restlet-2.1.2.jar SimpleServer.java && java -cp .:org.restlet-2.1.2.jar SimpleServer
rm -f *.class
