# Concurrent Logins

## Overview of the Vulnerability:

Having multiple concurrent logins can allow an attacker to reuse stolen or acquired session tokens to hijack requests. Old sessions are commonly found in open source intelligence efforts or through sniffed requests via Person-in-The-Middle (PitM) attacks. An attacker can use previously acquired sessions to exploit the privacy of a user of this application by continually accessing their account.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

## Steps to Reproduce:

1. Use a browser to navigate to: {{URL}}
1. Login to the application
1. Using an incognito tab or another browser, login using the same credentials
1. Observe that both sessions remain valid

## Proof of Concept (PoC):

The screenshots below show the concurrent logins:

{{screenshot}}
