The Radio Frequency Hub (RFH) is a receiver hub which communicates with other electronic devices and control units through either the Controller Area Network (CAN) bus or a separate serial bus. The RFH allows communications for vehicle accessories such as remote ignition systems, keyless entry, remote immobilization systems, and anti-theft systems, amongst other operations.

Misconfigurations in the RFH can lead to security weaknesses across any of these systems. An attacker can exploit the target system by creating a permanent clone of the key fob, giving permanent access to any vehicle of the same make/model.

## Business Impact

This RFH misconfiguration can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. Setup {{hardware}} and {{software}} to interact with the RF layer of {{target}}
1. Use the {{application}} on {{target}} to clone key fob by {{action}}
1. Use the original key fob to roll the nonce, then unlock {{target}} using spoofed {{hardware}}

## Proof of Concept (PoC)

The image(s) below demonstrates the RFH misconfiguration:

{{screenshot}}
