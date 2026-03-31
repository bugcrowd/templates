Privileged credential exposure in System Center Configuration Manager (SCCM) occurs when sensitive credentials are stored in task sequences, collection variables, or the Network Access Account (NAA) in a manner that allows retrieval by low-privileged users or managed devices. SCCM encrypts these credentials using a key that is available to any approved SCCM client. An attacker with access to a managed device or a low-privileged domain account can query the SCCM management point for policy data and decrypt the stored credentials. These credentials are often domain accounts with elevated privileges such as domain join accounts, local administrator accounts, or service accounts. This allows an attacker to recover plaintext credentials and use them for lateral movement or privilege escalation within the Active Directory environment.

**Business Risk**

Exposed privileged credentials in SCCM configuration data can grant an attacker access to domain join accounts, service accounts, or local administrator accounts. This can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Log in to a managed SCCM client at {{managed_device}} as {{low_privileged_user}}
1. Use a tool such as `SharpSCCM` or `sccmhunter` to request policy data from the management point at {{management_point_hostname}}
1. Retrieve the encrypted credential blob from {{policy_source}} containing {{credential_type}}
1. Decrypt the recovered credential blob using the SCCM client's policy decryption key at {{decryption_method}}
1. Confirm that the plaintext credential for {{account_name}} is recovered
1. Validate the recovered credential by authenticating to {{validation_target}} without elevated privileges

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
