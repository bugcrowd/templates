NTLM relay from the System Center Configuration Manager (SCCM) site server to site systems is a vulnerability where the site server uses NTLM authentication when communicating with other SCCM site system roles such as distribution points, management points, or software update points. An attacker who can intercept NTLM authentication from the site server can relay those credentials to other site systems. The site server typically authenticates with high-privilege domain credentials, so a successful relay grants the attacker administrative access to the target site system. This can be used to compromise site system roles, inject malicious content, or pivot to additional infrastructure within the SCCM hierarchy.

**Business Risk**

Successful NTLM relay of the site server's credentials allows an attacker to take administrative control of distribution points, management points, or other site roles. This can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Identify the SCCM site server at {{site_server_hostname}} and a target site system at {{target_site_system_hostname}}
1. Set up an NTLM relay tool on {{attacker_host}} configured to relay captured authentication to {{target_site_system_hostname}} on port {{target_port}}
1. Coerce NTLM authentication from {{site_server_hostname}} to {{attacker_host}} using {{coercion_method}}
1. Observe the relayed authentication succeeding
1. Execute a privileged action on {{target_site_system_hostname}} using the relayed session, such as {{privileged_action}}
1. Confirm that {{action_result}} demonstrates administrative access to the target site system

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
