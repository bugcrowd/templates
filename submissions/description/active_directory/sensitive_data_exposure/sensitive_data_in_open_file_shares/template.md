Sensitive data was identified in network file shares within the Active Directory environment and are accessible without authentication, or with permissions that are overly broad for authenticated domain users. These shares may contain documents with credentials, internal infrastructure diagrams, database backups, source code, financial records, or personally identifiable information. An attacker who can access these shares can browse and download sensitive content without exploiting any application vulnerability. The exposure results from misconfigured share permissions, inherited NTFS permissions, or the use of the "Everyone" or "Authenticated Users" groups for share access.

**Business Risk**

Open file shares expose sensitive organizational data to any user or attacker with network or domain access. Credentials found in shared documents can be used for lateral movement and privilege escalation. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}, or connect to the network without authentication
1. Enumerate network file shares across the domain using {{enumeration_tool}} targeting {{target_network_range}}
1. Identify the accessible share at {{share_path}} with {{permission_level}} permissions
1. Browse the share contents and locate sensitive data at {{file_path}}
1. Download {{sensitive_file}} from the share
1. Confirm that {{sensitive_data_description}} is present in the downloaded file

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
