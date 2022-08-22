# Impersonation via Broken Link Hijacking

## Overview of the Vulnerability

Content spoofing via Broken Link Hijacking is when a malicious attacker can register a link on behalf of the original owner due to a change in the original link. Due to the inherent trust a user has in the business and its brand, a malicious attacker is able to impersonate a credible target or domain to social engineer the user into disclosing data such as usernames, passwords or other sources of sensitive information.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Click on {{value}}
1. Observe that the link is redirected to an impersonate domain owned by the attacker

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the broken link hijack attack:

{{screenshot}}
