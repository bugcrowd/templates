# Sensitive Data Leakage Exposure

## Overview of the Vulnerability:

The In-Vehicle Infotainment (IVI) system is a the central unit in an automotive vehicle's dashboard that centralizes information and entertainment systems and their controls. Misconfigurations in the IVI system can lead to security weaknesses. The IVI system leaks sensitive data, allowing an attacker to collect this sensitive data via logs and user configurations within the underlying IVI interface.

## Business Impact:

Sensitive data that is accessible from within the IVI system can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle. Additionally, the impact is further enhanced by the impact of the business having to respond, notify, and recover from a potential data breach if an attacker is successful in exfiltrating PII.

## Steps to Reproduce:

1. Power on {{target}} by {{action}}
1. Use {{application}} and notice that the data is stored/transmitted by {{application}} in an insecure manner

## Proof of Concept (PoC):

The image(s) below demonstrates how and where to find the sensitive data on the vulnerable system:

{{screenshot}}
