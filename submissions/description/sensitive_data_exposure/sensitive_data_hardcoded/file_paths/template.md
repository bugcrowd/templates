# Hardcoded File Paths

## Overview of the Vulnerability:

Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. This application has hardcoded file paths which can be used by an attacker to request files from the underlying system via directory traversal and can lead to exposure of data such as file naming conventions, system admin users, and permissions on the system.

## Business Impact:

This vulnerability can lead to sensitive data through the attacker’s ability to manipulate the application through their access to the hardcoded file paths. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe the hardcoded file path exposed in the request / source code:

{{screenshot}}

## Proof of Concept (PoC):

The following screenshot shows the hardcoded file path:

{{screenshot}}
