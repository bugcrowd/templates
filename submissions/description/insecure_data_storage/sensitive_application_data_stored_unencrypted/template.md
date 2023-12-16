# Sensitive Application Data Stored Unencrypted

## Overview of the Vulnerability:

Insecure data storage can occur in both the client and server sides of an application. When sensitive application data is stored insecurely it is susceptible to being identified and used maliciously. An attacker could abuse this unencrypted data storage to steal sensitive information that a user inputted. With this sensitive information, a malicious attacker could perform further attacks on the application or impersonate the user.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce:

1. Login to the application and input personal, sensitive data so that it is stored by the application
1. Navigate to where the application stores the gathered information
1. Observe the sensitive application data that is stored unencrypted

## Proof of Concept (PoC):

The screenshots below demonstrate the insecure data storage:

{{screenshot}}
