# Data Not Encrypted at Rest (Non-Sensitive)

## Overview of the Vulnerability

The device stores non-sensitive data that is not encrypted at rest. Despite the data not being directly exploitable, its accessibility due to lack of encryption allows attackers with physical access to the device to retrieve this information. This exposure could facilitate reverse engineering efforts or aid in future exploitation attempts, indirectly compromising the system's security.

## Business Impact

While the data in question is classified as non-sensitive, its exposure still poses security risks. Unauthorized access to this data can provide attackers with insights into the device's operations or architecture, potentially leading to vulnerabilities being uncovered. This situation can undermine the security posture of the device, leading to increased susceptibility to targeted attacks, erosion of customer confidence, and potential reputational damage.

## Steps to Reproduce

1. Gain physical access to the device and remove the cover as seen in the images below.
1. Locate the hard drive on the device, and remove it.
1. Using a external hard drive caddy, mount the device.
1. Observe that it is possible to access the filesystem, demonstrating the lack of encryption at rest.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
