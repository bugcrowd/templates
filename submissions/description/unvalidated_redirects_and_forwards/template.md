# Unvalidated Redirect and Forwards

## Overview of the Vulnerability:

Unvalidated redirects and forwards occur when an application accepts user input that is not validated into the target of a redirection. This input causes a redirection to an external domain, manipulating a user by redirecting them to a malicious site. An open redirect was identified which can impact users' ability to trust legitimate web pages. An attacker can send a phishing email that contains a link with a legitimate business name in the URL and the user will be redirected from the legitimate web server to any external domain. Users are less likely to notice subsequent redirects to different domains when an authentic URL with a valid SSL certificate can be used within the phishing link.

This type of attack is also a precursor for more serious vulnerabilities such as Cross-Site Scripting (XSS), Server-Side Request Forgery (SSRF), Cross-Site Request Forgery (CSRF), or successful phishing attempts where an attacker can harvest users' credentials or gain users' OAuth access by relaying them through an Open Redirection, to a server they control (and can see the inbound requests from).

## Business Impact:

Unvalidated redirects and forwards can result in reputational damage for the business as customers' trust is negatively impacted by an attacker sending them to a phishing site to extract login credentials, or coercing them to send a financial transaction.

## Steps to Reproduce:

1. Using a browser, navigate to: {{URL}}
1. Copy and modify the URI so that the URL redirects to `url=<http://www.bugcrowd.com/`
1. Submit this in a new browser window and you should be redirected to the Bugcrowd website.

## Proof of Concept (PoC):

The screenshot below demonstrates the unvalidated redirect or forward executing:

{{screenshot}}
