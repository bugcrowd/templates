# Infotainment Denial of Service

## Overview of the Vulnerability

The In-Vehicle Infotainment (IVI) system is a central unit in an automotive vehicle's dashboard that centralizes information and entertainment systems and their controls. Misconfigurations in the IVI system can lead to security weaknesses. An attacker can take advantage of an IVI misconfiguration and inject format strings into the IVI system, causing a Denial of Service (DoS) condition to the system.

## Business Impact

DoS in the IVI system can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. Perform reconnaissance on the application by {{action}}, using {{software}} on the system
1. The IVI system {{application}} exposes {{target}} on the system
1. Inject the following payload in the infotainment system input field:

{{payload}}

1. Observe the inserted payload from infotainment system

## Proof of Concept (PoC)

The image(s) below demonstrates theDoS from injected format strings on the target infotainment system:

{{screenshot}}
