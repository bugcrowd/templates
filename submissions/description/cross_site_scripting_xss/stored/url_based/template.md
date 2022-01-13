# Cross Site Scripting Stored URL Based

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

An attacker can leverage XSS within the application to {{action}}.

## Walkthrough & PoC

1. Navigate to the following URL: bugcrowd.com/vulnerable-endpoint

1. Intercept the request in a Web Proxy, notice the parameter in the URL:

{{parameter}}

1. Forward the request to see the arbitrary javascript execute

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities can be escalated by an attacker who can then attempt to bypass Cross-Site Request Forgery (CSRF) protections, or perform account takeovers (usually combined with missing `httpOnly` flag on session cookies),  giving them the ability to perform any action that a logged in user can perform.
