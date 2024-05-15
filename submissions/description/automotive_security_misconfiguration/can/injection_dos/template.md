# CAN Injection - Denial of Service

## Overview of the Vulnerability

The Controller Area Network (CAN) is a network bus designed to aid communication between an automotive vehicle’s electronic devices and control units. CAN misconfigurations can lead to security weaknesses in the data transfer process between components that can result in injection flaws. The {{application}} allows an attacker to connect to the CAN Bus and send multiple messages to the system at a rate which can cause a Denial of Service (DOS) condition. This can cause disruption to the communication between the vehicle’s electronic devices and control units.

## Business Impact

This CAN misconfiguration can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

## Steps to Reproduce

1. The CAN input is identified by using {{hardware}} on {{target}}
1. Connect to {{target}} by using {{application}} with {{hardware}}
1. Inject the following payload recursively with a short delay using {{hardware}}:

{{payload}}

1. Observe that a DoS condition has been created

## Proof of Concept (PoC)

The image(s) below demonstrates the process by which an attacker identifies where the CAN communication occurs. It also shows how an attacker connects to the {{target}}, and is able to inject the payload(s) recursively causing a DoS condition:

{{screenshot}}
