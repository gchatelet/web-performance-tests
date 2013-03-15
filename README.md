web-performance-tests
=====================

Collection of mini applications that do simple HTTP serving for purpose of comparing them between each other

All applications should listen on port 8080 and upon received request answer with "text/plain" message that appends string from "name" GET parameter to string "Hello, ".
All application folders should have "run.sh" shell script that prepares and runs server so it is ready for tests.
