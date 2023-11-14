# Sensitive Data Disclosure: Non-Sensitive Token in URL

## Overview of the Vulnerability

Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. This application discloses a non-sensitive token in the URL which an attacker can use to build word lists for brute-forcing valid tokens across the application environment.

## Business Impact

When an application discloses a non-sensitive token in the URL it leaves the application more susceptible to future attacks.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Observe the exposed token in the URL

## Proof of Concept (PoC)

The following screenshot shows the non-sensitive token in the URL:

{{screenshot}}
