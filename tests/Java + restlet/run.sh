#!/bin/bash
rm -f *.class
javac -cp org.restlet-2.1.2.jar SimpleServer.java && java -cp .:javax.servlet-2.5.0.v201103041518.jar:jetty-continuation-7.6.5.v20120716.jar:jetty-io-7.6.5.v20120716.jar:jetty-util-7.6.5.v20120716.jar:org.restlet-2.1.2.jar:org.restlet.ext.ssl-2.1.2.jar:jetty-ajp-7.6.5.v20120716.jar:jetty-http-7.6.5.v20120716.jar:jetty-server-7.6.5.v20120716.jar:jsslutils-1.0.5.jar:org.restlet.ext.jetty-2.1.2.jar:servlet-api-2.5.jar SimpleServer
rm -f *.class