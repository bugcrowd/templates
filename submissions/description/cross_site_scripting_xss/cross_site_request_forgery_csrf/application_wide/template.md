# Cross-Site Request Forgery: Application-wide CSRF

Cross-Site Request Forgery (CSRF) occurs when an attacker can perform actions on behalf of an authenticated user by sending a crafted request to the application after enticing the user into visiting a malicious website. The application is unable to distinguish between the malicious request and the legitimate request, as the attacker is able to partially bypass the same-origin policy by spoofing the user's authenticated session. 

Application-wide cross-site request forgery is possible on {{application}} allowing a malicious attacker to perform several sensitive actions, such as {{actions}}.

## Walkthrough & PoC

1. Sign in to {{application}} at {{url}}
1. Navigate to {{url} and submit the sensitive action form
1. Use the HTTP proxy to intercept the request triggered by the sensitive action form
1. Using the provided HTTP proxy tools or your own knowledge, create a CSRF proof of concept HTML code
1. Open the CSRF POC code created in step 4, and submit the CSRF format
1. Navigate to {{url}} and observe the action taken by the CSRF POC code was successful
1. Repeat the above steps for every form on the application, demonstrating that the lack of CSRF protection is an application-wide issue.

## Vulnerability Evidence

Please view the proof of concept CSRF HTML code below for sensitive action 1:
{{payload}}

Please view the proof of concept CSRF HTML code below for sensitive action 2:
{{payload}}

Please view the proof of concept CSRF HTML code below for sensitive action 3:
{{payload}}

Please view the proof of concept CSRF HTML code below for sensitive action 4:
{{payload}}


## Demonstrated Impact

An application that lacks CSRF protection on all forms potentially allows an attacker to perform all sensitive actions on behalf of a user, simply by having them visit a malicious website.
