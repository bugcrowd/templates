# GET-Based Open Redirect

## Overview

Open redirects enable an attacker to manipulate a user by redirecting them to a malicious site. An attacker can send a phishing email that contains a link with a legitimate business name in the URL and the user will be redirected from the legitimate web server to any arbitrary external domain.

User's are less likely to notice subsequent redirects to different domains when an authentic URL with a valid SSL certificate can be used within the phishing link.

A GET-based open redirect was found at {{url}} through {{parameter}} enabling {{action}} to take place.

## Steps to Reproduce

1. Browse to {{url}}
1. At the top of the site click on the {{name}} button. You should see a request similar to:
`{{url}}/query.php?{{parameter}}=http%3A%2F%2F%3CexampleSite%3E.com%2F91383`
1. Copy this and modify the URI so the URL is:
`{{url}}/query.php?{{parameter}}={{payload}}`
1. Submit this in a new browser window and you should be redirected to the Bugcrowd website.

## Vulnerability Evidence

The screenshot below demonstrates the GET-based open redirect executing at {{url}} through the {{parameter}} parameter:

{{screenshot}}

## Demonstrated Impact

Using open redirects a malicious attacker can send users to phishing websites to extract login credentials or coerce the user to send a financial transaction. This can result in reputational damage of {{program}} and their users.
