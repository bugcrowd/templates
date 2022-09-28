# Remote Code Execution (RCE)

## Overview of the Vulnerability

Remote Code Execution (RCE) is a vulnerability that allows commands to be executed remotely on a target machine by crafting a request within the application where there should be no context to access or execute code.

A RCE vulnerability in this application allows a malicious attacker to remotely execute code on the server, enabling an attacker to extract passwords, reconfigure running services, move laterally into attached networks, and potentially take over the server.

## Business Impact

RCE could lead to data theft through the attacker's ability to manipulate data through their access to the application server. These malicious actions could also result in reputational damage for the business through the impact to customers' trust.

## Steps to Reproduce

Example:

1. Using a Machine with access to cURL, run the command `curl {{url}}/cmd?=ping%20192.168.1.1;cat%20/etc/hostname`
1. In the terminal, you will see the output of the ping command, then the hostname of the server hosting this website.

## Proof of Concept

The screenshot below demonstrates the RCE in the application through the specified parameter:

{{screenshot}}
