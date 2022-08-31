# Radio Frequency Can Injection Interaction

## Overview of the Vulnerability

The Radio Frequency Hub (RFH) is a receiver hub which communicates with other electronic devices and control units through either the Controller Area Network (CAN) bus or a separate serial bus. The RFH allows communications for vehicle accessories such as remote ignition systems, keyless entry, remote immobilization systems, and anti-theft systems, amongst other operations.

Misconfigurations in the RFH can lead to security weaknesses across any of these systems. An attacker can exploit radio frequency interactions in the target and can interact and send messages to the CAN bus, disrupting the communication between the vehicle’s electronic devices and control units.

## Business Impact

This RFH misconfiguration can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. Setup {{hardware}} and {{software}} to interact with the RF layer of {{target}}
1. Using {{software}} send command: {{payload}}
1. Observe that {{action}} occurs on the {{target}} as a result

## Proof of Concept (PoC)

The image(s) below demonstrates the RFH misconfiguration:

{{screenshot}}
