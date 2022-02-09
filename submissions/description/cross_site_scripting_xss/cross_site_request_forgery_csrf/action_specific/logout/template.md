# Cross-Site Request Forgery For Logout Functionality

## Overview

Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of a user without their knowledge via hidden forms, images, and JavaScript. The application is unable to distinguish between the malicious request and the legitimate request from the user. A malicious attacker can leverage CSRF to ride a user's session and make requests to a trusted application the targeted user is interfacing with.

CSRF is possible on {{application}} allowing a malicious attacker to log-out a valid user by {{action}}.

## Walkthrough & PoC

1. Navigate to Bugcrowd.com/vulnerable-endpoint

1. Logout of the application and intercept with a Web Proxy

1. Use {{software}} to generate a CSRF proof of concept and re-send the request

1. Notice that the user was logged out, specifying that the CSRF attack was successful:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

A malicious attacker can deny service to users using this CSRF vector to prevent access to the application and constantly logging users out.
