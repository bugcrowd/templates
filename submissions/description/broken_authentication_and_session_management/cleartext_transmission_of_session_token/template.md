# Cleartext Transmission of Session Token

## Overview of the Vulnerability

Session tokens help a server trust that the requests it is receiving come from a specific authenticated user. When a session token is transmitted in cleartext over an unencrypted channel, it can be intercepted via a Person-in-the-Middle (PitM) attack. This application transmits the session token via a cleartext transmission which can allow an attacker to access the session token via a PitM attack and send requests to the server pretending to be the legitimate user.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure. It can also lead to data theft through the attacker’s ability to manipulate data through their ability to make requests to the server through a legitimate session token. However, the attacker is limited by the legitimate user’s privileges within the application/

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. View the HTTP headers using an HTTP interception proxy
1. Observe the `Secure` flag is not set
1. Observe that cookies are sent in cleartext

## Proof of Concept (PoC)

The screenshots below show the session token being transmitted via cleartext:

{{screenshot}}
