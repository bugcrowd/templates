# No Rate Limiting on Form which Triggers SMS

## Overview of the Vulnerability

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. A lack of rate limiting on a SMS triggering endpoint was identified. This allows an attacker to create a large amount of messages to any valid mobile number, which they could use to spam a target with SMS messages.

## Business Impact

No rate limiting on a form which triggers SMS can result in reputational damage for the business as customers’ trust is impacted through receiving large amounts of unwanted and unsolicited SMS messages. This also creates the risk of the business’ phone number being added to a spam list.

Additionally, for systems that use Software-as-a-Service (SaaS) SMS providers, there can be direct financial costs associated with sending large volumes of SMS messages.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Using a browser, sign into the application
1. Navigate to {{url}} and fill out the form that triggers SMS, using a phone number that you own as the destination
1. Submit the form while using the HTTP intercept proxy to intercept the request
1. Using the HTTP intercept proxy, re-issue the captured request 400 times in rapid succession
1. Observe within the target phone number inbox that all 400 of these requests triggered a SMS message, showing that there is no rate-limiting on the form

## Proof of Concept

The following screenshot shows a lack of rate limiting on the form which triggers SMS:

{{screenshot}}
