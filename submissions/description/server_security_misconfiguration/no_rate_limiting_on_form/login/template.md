# No Rate Limiting on Login Form

## Overview

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on a login form a malicious attacker can perform a brute force attack on the login page which greatly increases the likelihood of account takeover.

A lack of a Rate Limiting in {{target}} allows a malicious attacker to {{action}}.

## Steps to Reproduce

1. Navigate to the following URL:
{{value}}

1. Fill in the form to login and intercept in a HTTP Intercept Proxy

1. Use {{program}} (Up to 10 requests) to launch a spam attack

## Vulnerability Evidence

The image(s) below demonstrates the lack of rate limiting on the login functionality:

{{screenshot}}

## Demonstrated Impact

This vulnerability enables an attacker to brute force any login for the website, and allow an attacker to attempt an account takeover. A lack of rate limiting on this login form can lead to financial loss, theft of personally identifiable information, and reputational damage of {{program}}.
