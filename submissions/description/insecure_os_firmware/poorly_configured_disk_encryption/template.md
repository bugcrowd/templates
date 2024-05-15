# Poorly Configured Disk Encryption

## Overview of the Vulnerability

The device uses a disk encryption to protect stored data from being accessed while at rest. However, due to a poor configuration of the encryption mechanism, an unauthorized attacker with physical access to the device can decrypt the disk's contents. This vulnerability could expose secrets, customer data, or other sensitive information stored on the device.

## Business Impact

A flaw in the disk encryption configuration significantly undermines the device's data security, posing a high risk to the confidentiality and integrity of stored data. If exploited, this vulnerability can lead to the exposure of sensitive information, potentially resulting in financial losses, damage to the organization's reputation, and erosion of customer trust. Furthermore, it may result in non-compliance with data protection regulations.

## Steps to Reproduce

1. Gain physical access to the device and start the boot process.
2. Once the device has reached the boot menu and asks for a password, type `A` 257 times and press enter.
3. The device will decrypt the disk and you can access its contents, including any sensitive data stored on the device.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
