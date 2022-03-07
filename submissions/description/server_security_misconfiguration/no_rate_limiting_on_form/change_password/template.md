# No Rate Limiting on Change Password Form

## Overview

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on the change password form, a malicious attacker is able to brute force passwords and potential gain access to legitimate users' accounts.

A lack of a Rate Limiting in {{target}} allows a malicious attacker to brute force passwords.

## Walkthrough & PoC

1. Navigate to the following URL:
{{value}}
1. Fill in the form to change the password and intercept in a Web Proxy
1. Use {{program}} (Up to 10 requests) to launch a spam attack

## Vulnerability Evidence

The image(s) below demonstrates the lack of rate limiting on the change password functionality:

{{screenshot}}

## Demonstrated Impact

A malicious attacker can leverage this functionality to possibly slow the network and guess passwords without a limit for accounts. A lack of rate limiting on this form can lead to financial loss, information theft, and reputational damage of {{program}}.
