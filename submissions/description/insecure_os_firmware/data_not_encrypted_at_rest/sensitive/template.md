# Data Not Encrypted at Rest (Sensitive)

## Overview of the Vulnerability

The device stores sensitive data that is not encrypted at rest, compromising the confidentiality and integrity of the data. This oversight allows an attacker with physical access to the device to easily access and potentially compromise the sensitive data contained within, exposing personal information, secrets, or credentials.

## Business Impact

The absence of encryption for sensitive data at rest on the device poses a significant risk to data confidentiality and integrity. This vulnerability can lead to data breaches, unauthorized access to sensitive information, and potential financial and reputational damages to the organization. It undermines the trust of customers and partners and may result in non-compliance with regulatory requirements related to data protection and privacy.

## Steps to Reproduce

1. Gain physical access to the device and remove the cover as seen in the images below.
1. Locate the hard drive on the device, and remove it.
1. Using a external hard drive caddy, mount the device.
1. Observe that it is possible to access the filesystem, demonstrating the lack of encryption at rest.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
