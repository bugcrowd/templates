# No Rate Limiting on Form which Triggers SMS

## Overview

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on a form which triggers an SMS, a malicious attacker can spam messages to one or more phone numbers.

A lack of a rate limiting in {{target}} allows a malicious attacker to {{action}}.

## Steps to Reproduce

1. Navigate to the following URL:
{{value}}
1. Fill in the form to send an SMS message and intercept in a HTTP intercept proxy
1. Use {{program}} (Up to 10 requests) to resend the SMS multiple times

## Vulnerability Evidence

The image(s) below demonstrates the lack of rate limiting on the SMS functionality:

{{screenshot}}

## Demonstrated Impact

This vulnerability enables an attacker to use this form to send spam to a target mobile number, cause service interruptions for the service provider, or could result in the SMS number being placed on a spam list. A lack of rate limiting on the SMS functionality can lead to financial loss and reputational damage of {{program}}.
