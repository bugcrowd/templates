# Unnecessary Data Collection (WIFI SSID & Password)

## Overview of the Vulnerability

Unnecessary data collection is where an application collects user or user device data that is not necessary for the functionality of the application. The WIFI SSID and password is not used by the application and therefore its collection is unnecessary. If an attacker were to gain access to this collected information they could perform further attacks on the application, the business, or its users.
  
## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Observe in the HTTP interception proxy that the WIFI SSID and password is being collected

## Proof of Concept (PoC)

Below is a screenshot demonstrating that unnecessary data collection:

{{screenshot}}
