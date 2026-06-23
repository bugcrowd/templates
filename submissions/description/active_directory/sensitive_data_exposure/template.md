Sensitive data was identified within the Active Directory environment and is accessible without authentication, or with permissions that are overly broad for authenticated domain users. The sensitive information is accessible due to open file share, the domain controller accepting LDAP queries without authentication, or due to other misconfigurations An attacker can take advantage of these misconfigurations to browse and download sensitive content, such as credentials, internal infrastructure diagrams, database backups, source code, financial records, or personally identifiable information.

**Business Risk**

Open file shares expose sensitive organizational data to any user or attacker with network or domain access. Credentials found in shared documents can be used for lateral movement and privilege escalation. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Authenticate to the domain as a low privileged user from {{attacker_host}}
1. Enumerate the specific weakness in the domain
1. Compare and the observed weakness against the security baseline at {{baseline_reference}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
