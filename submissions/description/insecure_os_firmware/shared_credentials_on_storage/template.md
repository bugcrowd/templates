# Shared Credentials on Storage

## Overview of the Vulnerability

The device in question stores a set of shared credentials on its storage medium. These credentials are intended for accessing a shared service. However, should the device be compromised or acquired by unauthorized parties, an attacker could use these shared credentials to gain access to services that are normally restricted.

## Business Impact

The presence of shared credentials stored on the device poses a significant security risk. Unauthorized access to shared services can lead to data breaches, unauthorized transactions, or the manipulation of sensitive information. Such incidents can severely impact the organization's operational security, result in financial losses, and damage the organization's reputation, especially if customer data or critical business operations are compromised.

## Steps to Reproduce

1. Gain physical access to the device and remove the cover, as seen in the images below:

{{screenshot}}
2. Locate the hard drive on the device, and remove it.
3. Using a external hard drive caddy, remove the device's storage.
4. Mount the device and extract the credentials from: {{filepath}}.

or

1. Gain remote access to the device via SSH with the following credentials.
2. Browse to the file path, {{filepath}} and open the file.
3. On Line 32, you can see the variable {{JWT}}.
4. Using the HTTP request below, send the request with the token:
{{HTTP request}}

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
