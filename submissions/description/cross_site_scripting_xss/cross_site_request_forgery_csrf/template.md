# Cross-Site Request Forgery

Cross-Site Request Forgery (CSRF) occurs when requests to the application are submitted on behalf of a user without their knowledge via hidden forms, images, and JavaScript. The application is unable to distinguish between the malicious request and the legitimate request from the user.

CSRF is possible on {{application}} allowing a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Sign in to {{application}} at {{url}}
1. Navigate to {{url} and submit the sensitive action form
1. Use the HTTP proxy to intercept the request triggered by the sensitive action form
1. Using the provided HTTP proxy tools, or your own knowledge, create a CSRF proof of concept HTML code
1. Open the CSRF POC code created in step 4, and submit the CSRF format
1. Navigate to {{url}} and observe the action taken by the CSRF POC code was successful

## Vulnerability Evidence

Please view the proof of concept CSRF HTML code below:

{{screenshot}}

Please view the evidence showing a sensitive action that is vulnerable to CSRF below:

{{screenshot}}

## Demonstrated Impact

A malicious attacker can perform actions on behalf of a user, potentially being able to copy, edit, or delete data, or otherwise perform actions within the application that the user's privileges allow.

In this application, the form {{value}} lacks CSRF protection potentially allowing an attacker to perform {{action}} on behalf of a user, simply by having them visit a malicious website.
