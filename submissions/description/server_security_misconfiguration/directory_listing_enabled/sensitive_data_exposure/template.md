# Sensitive Data Exposure via Directory Listing Enabled

## Overview of the Vulnerability

Sensitive data can be exposed by web servers which list the contents of directories that do not have an index page. This increases the exposure of sensitive files which are not intended to be accessed. Within this application, sensitive data has been exposed through a directory listing being enabled. This allows an attacker to quickly identify resources of a specific path, or gain access to sensitive data stored in the directory by browsing to the directory listing.

## Business Impact

Sensitive data exposure could lead to reputational damage or regulatory fines for the business due to an attacker’s unauthorized access to data which could impact customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in the directory listing.

## Steps to Reproduce

1. Using a browser, navigate to the following URL to find that directory listing is enabled:

{{URL}}

## Proof of Concept (PoC)

The screenshot below demonstrates the sensitive data found:

{{screenshot}}
