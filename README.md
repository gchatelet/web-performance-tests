web-performance-tests
=====================

Collection of mini applications that do simple HTTP serving for purpose of comparing them between each other

All applications should listen on port 8080 and upon received request answer with "text/plain" message that appends string from "name" GET parameter to string "Hello, ".
All application folders should have "run.sh" shell script that prepares and runs server so it is ready for tests.

Important thing to take into considertion is that those are tested with out-of-the-box layout, no additional multitasking solutions used, no complex handling logic, just simple code snippets
as they can be found on framework web site. For some of them that means to use only one core and suck. That is intended for now.
