# Cross Site Request Forgery For Unauthenticated Action

## Overview
Cross-Site Request Forgery (CSRF) occurs when an attacker can perform actions on behalf of an authenticated user by sending a crafted request to the application after enticing the user into visiting a malicious website. The application is unable to distinguish between the malicious request and the legitimate request, as the attacker is able to partially bypass the same-origin policy by spoofing the user's authenticated session. 

Cross-site request forgery is possible on {{application}} allowing a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to Bugcrowd.com/vulnerable-endpoint

1. {{action}} and intercept with a Web Proxy

1. Use {{software}} to generate a CSRF proof of concept and re-send the request

1. Notice that the {{action}} occurred on the target account, specifying that the CSRF attack was successful:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

A malicious attacker can issue a request on behalf of the user to do an unintended action such as {{action}}.


