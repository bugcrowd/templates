# Radio Frequency Unauthorized Access To Turn On Vehicle

## Overview of the Vulnerability

The Radio Frequency Hub (RFH) is a receiver hub which communicates with other electronic devices and control units through either the Controller Area Network (CAN) bus or a separate serial bus. The RFH allows communications for vehicle accessories such as remote ignition systems, keyless entry, remote immobilization systems, and anti-theft systems, amongst other operations.

Misconfigurations in the RFH can lead to security weaknesses across any of these systems. An attacker can control the power state of a device via radio frequency. They could exploit this by performing a Denial of Service (DoS) attack, preventing the owner of the vehicle from turning their vehicle on or off, as well as allowing for remote control of the vehicle during use.

## Business Impact

This RFH misconfiguration can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. Setup {{hardware}} and {{software}} to interact with the RF layer of {{target}}
1. Turn on {{target}} using {{hardware}} and/or {{software}}

## Proof of Concept (PoC)

The image(s) below demonstrates the RFH misconfiguration:

{{screenshot}}
