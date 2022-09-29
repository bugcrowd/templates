# Source Code Dump

## Overview of the Vulnerability

The In-Vehicle Infotainment (IVI) system is a central unit in an automotive vehicle's dashboard that centralizes information and entertainment systems and their controls. Misconfigurations in the IVI system can lead to security weaknesses. Source code can be dumped in the target IVI system, allowing an attacker to read, release, and exploit code that should otherwise be hidden from users on the IVI unit. An attacker is able to dump firmware code online which also allows others to view, share, or exploit proprietary code.

## Business Impact

Source code that is accessible from within the IVI system can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. Acquire a bin or firmware file for {{target}}
1. Unzip the firmware using {{software}}
1. Unsquare file system using {{software}}

## Proof of Concept (PoC)

The image(s) below demonstrates the extracted firmware folder and snippets of exposed source code:

{{screenshot}}
