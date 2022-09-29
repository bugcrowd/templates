# Infotainment Default Credentials

## Overview of the Vulnerability

The In-Vehicle Infotainment (IVI) system, is a central unit in an automotive vehicle's dashboard that centralizes information and entertainment systems and their controls. Misconfigurations in the IVI system can lead to security weaknesses. Default credentials in the IVI unit can be leveraged by an attacker to gain developer access to the system. From here, the attacker can cause the system to behave not as intended.

## Business Impact

Default credentials in the IVI system can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. Port scan the IVI unit by leveraging {{application}} and {{hardware}}
1. Bruteforce default credentials on exposed service(s)
1. Login to service(s) and run {{action}}
1. Observe that {{action}} occurs as a result

## Proof of Concept (PoC)

The image(s) below demonstrates the default password successfully authenticating an attacker into the infotainment system:

{{screenshot}}
