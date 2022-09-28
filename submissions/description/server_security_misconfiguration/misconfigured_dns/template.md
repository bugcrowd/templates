# Misconfigured DNS

## Overview of the Vulnerability

Domain Name System (DNS) misconfigurations can result in internal information being leaked publicly. The DNS misconfiguration identified on the endpoints allows an attacker to view the internal network structure of the domain, transfer the zone file from one DNS to . From here, the attacker can use this information to form other attacks on the network and its users.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce

1. Login to the application at: {{url}}
1. Use {{software}} to gather information about the DNS


## Proof of Concept (PoC)

The screenshot(s) below demonstrates the misconfigured DNS:

{{screenshot}}
