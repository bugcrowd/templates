# GET-Based Open Redirect

## Overview of the Vulnerability

Open redirects enable an attacker to manipulate a user by redirecting them to a malicious site.  An attacker can send a phishing email that contains a link with a legitimate business name in the URL and the user will be redirected from the legitimate web server to any external domain. Users are less likely to notice subsequent redirects to different domains when an authentic URL with a valid SSL certificate can be used within the phishing link.

Open redirects impact users’ ability to trust legitimate web applications and can lead to more serious vulnerabilities such as Cross-Site Scripting (XSS), Server-Side Request Forgery (SSRF), Cross-Site Request Forgery (CSRF), or successful phishing attempts where an attacker can harvest users’ credentials or gain users’ OAuth access.

Vulnerability Specifics to the Application:

A GET-based open redirect was found at {{url}} through {{parameter}} enabling {{action}} to take place.

## Business Impact

Using open redirects a malicious attacker can send users to phishing websites to extract login credentials or coerce the user to send a financial transaction. This can result in reputational damage of {{customer-name}} and their users.

## Steps to Reproduce

1. Using {{browser-used}}, navigate to: {{URL}}
1. At the top of the site click on the {{name}} button. You should see a request similar to:
<{{URL}}/query.php?{{parameter}}=http%3A%2F%2F%3CexampleSite%3E.com%2F91383>
1. Copy this and modify the URI so that the URL is now:
<{{url}}/query.php?{{parameter}}={{payload}} eg. url=<http://www.bugcrowd.com/>>
1. Submit this in a new browser window and you should be redirected to the Bugcrowd website.

## Proof of Concept (PoC)

The screenshot below demonstrates the GET-based open redirect executing at {{url}} through the {{parameter}} parameter:

{{screenshot}}
