The In-Vehicle Infotainment (IVI) system, is a central unit in an automotive vehicle's dashboard that centralizes information and entertainment systems and their controls. Misconfigurations in the IVI system can lead to security weaknesses. An attacker can execute code on the IVI unit by taking advantage of a misconfiguration in the system, causing the system to not behave as intended.

**Business Impact**

This IVI system misconfiguration can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

**Steps to Reproduce**

1. Perform reconnaissance on the application by {{action}}, using {{software}} on the system
1. The IVI system {{application}} exposes {{target}} on the system
1. Inject the following to the exposed asset:

{{payload}}

1. Observe that {{action}} occurs as a result

**Proof of Concept (PoC)**

The image(s) below demonstrates the process by which an attacker identifies where the IVI system communication occurs. It also shows how an attacker is able to inject the payload(s):

{{screenshot}}
