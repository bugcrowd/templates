# No Rate Limiting on Form which Triggers Emails

## Overview of the Vulnerability

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on a form, an attacker could perform spam attacks against a specific email address, or they could enumerate users' correct emails through the difference in response times from the application.

Vulnerability Specifics to the Application:

No rate limiting on the email triggering form on {{application}} allows an attacker to {{action}}.

## Business Impact

This form could be used by an attacker to send a massive amount of unwanted and unsolicited emails to a specified email address. A lack of rate limiting on this form can lead to reputational damage of {{customer-name}}.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Using {{browser-used}}, sign in to {{application}} at {{url}}
1. Navigate to {{url}} and fill out the form that triggers an email, using an email that you own as the destination
1. Submit the form while using the HTTP intercept proxy to intercept the request
1. Re-issue the captured request 25 times in rapid succession
1. Observe within the target email address inbox that all 25 of these requests triggered an email, showing that there is no rate-limiting on the form at {{url}}

## Proof of Concept

The evidence showing a lack of rate limiting on a form which triggers emails can be seen below:

{{screenshot}}
