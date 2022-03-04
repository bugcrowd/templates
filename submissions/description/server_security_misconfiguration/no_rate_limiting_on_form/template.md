# No Rate Limiting on Form

## Overview

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on a form a malicious attacker is able to perform spam attacks through the form. Depending on what is returned from the application, an attacker may also be able to enumerate users or users' information.

A lack of a Rate Limiting in {{target}} allows a malicious attacker to spam submissions of the form or a denial of service to other customers attempting to submit the form.

## Steps to Reproduce

1. Navigate to the URL {{value}}
1. Fill in the form and intercept the submission in a HTTP interception proxy
1. Use {{program}} (Up to 10 requests) to launch a spam attack

## Vulnerability Evidence

The image(s) below demonstrates the lack of rate limiting on the form:

{{screenshot}}

## Demonstrated Impact

A malicious attacker can leverage this functionality to slow down the network and perform denial of service on {{application}}. A lack of rate limiting on this form can lead to financial loss and reputational damage of {{program}}.
