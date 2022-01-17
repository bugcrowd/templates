# Flash Based Cross-Site Request Forgery (Low)

## Overview

Cross-Site Request Forgery (CSRF) occurs when an attacker can perform actions on behalf of an authenticated user by sending a crafted request to the application after enticing the user into visiting a malicious website. The application is unable to distinguish between the malicious request and the legitimate request, as the attacker is able to partially bypass the same-origin policy by spoofing the user's authenticated session. 

A CSRF token or nonce needs to be used for each request when making critical read/write requests to the application. A malicious attacker can leverage CSRF to ride a user's session and make requests to a trusted application the targeted user is authenticated with by using a single nonce or CSRF token.

## Walkthrough & PoC

1. Navigate to Bugcrowd.com/vulnerable-endpoint

1. {{action}} and intercept with a Web Proxy, notice that a request is sent using SWF file:

{{screenshot}}

1. {{action}} using {{software}} to create a malicious SWF file 

1. Host the SWF file on an attack server using {{software}}

1. Create a CSRF proof of concept with a redirection to the hosted malicious file

1. Notice that the {{action}} occurred on the target account, specifying that the CSRF attack was successful:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

A malicious attacker can issue a request on behalf of the user to do an unintended action, such as {{action}}.
