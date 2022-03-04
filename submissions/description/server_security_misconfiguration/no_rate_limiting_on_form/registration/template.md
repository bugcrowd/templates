# No Rate Limiting on Registration Form

## Overview

Rate Limiting prevents an application from becoming unresponsive or unavailable due to too many requests exhausting the application's resources. Without rate limiting on a registration form a malicious attacker can perform user enumeration, generate multiple spam accounts, or create a denial of service blocking legitimate users from registering within the application.

A lack of a Rate Limiting in {{target}} allows a malicious attacker to {{action}}.

## Steps to Reproduce

1. Navigate to the following URL:
{{value}}
1. Fill in the form to register and intercept in a HTTP intercept Proxy
1. Use {{program}} (Up to 10 requests) to launch a spam attack

## Vulnerability Evidence

The image(s) below demonstrates the lack of rate limiting on the registration functionality:

{{screenshot}}

## Demonstrated Impact

This vulnerability allows an attacker to generate multiple spam accounts on the website, squat usernames, and prevent legitimate users from joining. A lack of rate limiting on this registration form can lead to financial loss and reputational damage of {{program}}.
