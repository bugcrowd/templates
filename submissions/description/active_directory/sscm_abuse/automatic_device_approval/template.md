Automatic device approval is a misconfiguration in System Center Configuration Manager (SCCM) where new client devices are automatically approved for management without administrator review. An attacker can register a rogue device with the SCCM site by installing the SCCM client and pointing it at the management point. The rogue device is automatically approved and receives all policies, software deployments, and configuration baselines assigned to its collection. This may include applications containing credentials, scripts with privileged account details, or compliance policies that reveal internal security configurations.

**Business Risk**

Automatic device approval can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Install the SCCM client on {{attacker_device}} and configure it to register with the management point at {{management_point_hostname}}
1. Submit a client registration request from {{attacker_device}} to {{management_point_hostname}}
1. Confirm that {{attacker_device}} is automatically approved without administrator intervention by checking the client status at {{sccm_console_path}}
1. Wait for policy and deployment assignments to be applied to {{attacker_device}}
1. Examine the received policies and software deployments on {{attacker_device}} at {{local_policy_path}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
