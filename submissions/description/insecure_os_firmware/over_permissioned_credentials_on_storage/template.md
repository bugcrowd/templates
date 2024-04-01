# Over-Permissioned Credentials on Storage

## Overview of the Vulnerability

The device contains a set of credentials stored on its storage medium that are over-permissioned for their intended use. While these credentials are designed to access a specific shared service, their excessive permissions allow for broader unauthorized access. If the device is compromised or falls into the hands of unauthorized user, these over-permissioned credentials could be used to access not only the intended service but also additional services and data that should be segregated.

## Business Impact

Storing over-permissioned credentials on the device presents a significant security risk, amplifying the potential damage from unauthorized access. Attackers could exploit these credentials to gain extensive control over the system's resources and sensitive data, including customer information and proprietary secrets. Such breaches can lead to financial losses, regulatory penalties, erosion of customer trust, and long-term reputational damage to the organization.

## Steps to Reproduce

1. Gain physical access to the device and remove the cover, as seen in the images below:
{{screenshot}}
1. Locate the hard drive on the device and remove it.
1. Using a external hard drive caddy, remove the hard drive from the device's storage.
1. Mount the device and extract the credentials from: {{filepath}}

or

1. Gain remote access to the device via SSH with the following credentials:
{{credentials}}

1. Browse to the file path {{filepath}} and open the file.
1. On Line 32, you can see the variable: {{JWT}}
1. Using the HTTP request below, send the request with the token:
{{HTTP request}}

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
