# No Rate Limiting on Form which Triggers Emails

## Overview

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on a form a malicious attacker is able to perform spam attacks against a specific email address, or they may be able to enumerate users' correct emails through the responses.

No rate limiting on email-triggering form on {{application}} allows a malicious attacker to {{action}}.

## Steps to Reproduce

1. Utilize a HTTP intercept proxy to record and intercept web traffic from your browser
1. Sign in to {{application}} at {{url}}
1. Navigate to {{url}} and fill out the form that triggers an email, using an email that you own as the destination
1. On submitting the form, use the HTTP intercept proxy to intercept the request
1. Re-issue the captured request 25 times in rapid succession
1. In the target email address, observe that all 25 of these requests triggered an email, showing that there is no rate-limiting on the form at {{url}}

## Vulnerability Evidence

Please view the evidence showing a lack of rate limiting on a form that triggers an email below:

{{screenshot}}

## Demonstrated Impact

This form could be used by an attacker to send a massive amount of unwanted and unsolicited emails to a specified email address. A lack of rate limiting on this form can lead to financial loss and reputational damage of {{program}}.
