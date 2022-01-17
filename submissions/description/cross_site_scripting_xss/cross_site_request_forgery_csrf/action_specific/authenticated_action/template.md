# Cross site request forgery: CSRF authenticated action

Cross-Site Request Forgery (CSRF) occurs when an attacker can perform actions on behalf of an authenticated user by sending a crafted request to the application after enticing the user into visiting a malicious website. The application is unable to distinguish between the malicious request and the legitimate request, as the attacker is able to partially bypass the same-origin policy by spoofing the user's authenticated session. 

Cross-site request forgery is possible on {{application}} allowing a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Sign in to {{application}} at {{url}}
1. Navigate to {{url} and submit the sensitive action form
1. Use the HTTP proxy to intercept the request triggered by the on an authenticated action form
1. Using the provided HTTP proxy tools or your own knowledge, create a CSRF proof of concept HTML code
1. Open the CSRF POC code created in step 4, and submit the CSRF format
1. Navigate to {{url}} and observe the action taken by the CSRF POC code was successful

## Vulnerability Evidence

Please view the proof of concept CSRF HTML code below.
{{screenshot}}

Please view the evidence showing an authenticated action that is vulnerable to CSRF below. {{screenshot}}

## Demonstrated Impact

An authenticated form that lacks CSRF protection potentially allows an attacker to perform actions on behalf of a user, simply by having them visit a malicious website.
