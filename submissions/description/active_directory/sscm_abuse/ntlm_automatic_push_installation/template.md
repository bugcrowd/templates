NTLM relay via System Center Configuration Manager (SCCM) automatic client push installation is a vulnerability where the site server automatically connects to newly discovered devices to install the SCCM client using a configured push installation account, which authenticates to the target device using NTLM. An attacker who controls a device or DNS entry on the network can cause the site server to initiate a push installation to an attacker-controlled host. The attacker can then relay the push installation account's NTLM credentials to a high-value target such as a domain controller or the site database server. The push installation account is often granted local administrator privileges across managed devices.

**Business Risk**

Successful NTLM relay of this account allows an attacker to gain administrative access to domain controllers, site database servers, or other critical infrastructure. This can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Identify the SCCM site server at {{site_server_hostname}} with automatic client push installation enabled
1. Register a new device or DNS record for {{attacker_controlled_hostname}} on the network to trigger automatic client push discovery
1. Set up an NTLM relay tool on {{attacker_host}} configured to relay captured authentication to {{target_hostname}} on port {{target_port}}
1. Wait for the site server to initiate a client push installation to {{attacker_controlled_hostname}}
1. Capture the NTLM authentication from the push installation account and relay it to {{target_hostname}}
1. Confirm that the relayed authentication grants administrative access on {{target_hostname}} by executing {{verification_action}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
