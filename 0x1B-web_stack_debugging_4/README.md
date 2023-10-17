# Web Stack debugging #4

This is the fourth project on debugging a web server.

# The Problem

In this web stack debugging task, we are testing how well our web server setup
featuring Nginx is doing under pressure and it turns out it is not doing
well: we are getting a huge amount of failed requests.

For the benchmarking, we are using ApacheBench. It allows you to simulate HTTP requests
to a web server. In this case, I will make 2000 requests to my server
with 100 requests at a time. I found out that 674 requests failed.

# Steps I took to debug and fix

Examined Nginx logs via /var/log/nginx/error.log

Found Failure was due to running out of file descriptors (File descriptors are resources
allocated by the operating system for various tasks, including handling open files and
network connections. When you exceed the allowed number of file descriptors, you encounter
the "Too many open files" error.)

Examined my current file descriptor limit using "ulimit -n"

Set up a puppet file that increased this limit
