#!/usr/bin/python
import socket

ip = input("Enter the ip: ")
port = input("Enter port: ")

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

if s.connect_ex((ip, int(port))):
	print("Port " + port + " is closed")
else:
	print("Port " + port + " is open")
