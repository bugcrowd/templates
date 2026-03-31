The Active Directory domain controller accepts LDAP queries without authentication. An unauthenticated attacker with network access to the domain controller can query the directory for user accounts, group memberships, organizational units, computer objects, and other directory metadata. This exposes the full structure of the Active Directory environment without requiring any credentials. An attacker can use this information to identify high-value targets, map trust relationships, enumerate privileged group membership, and plan further attacks against the domain.

**Business Risk**

Anonymous LDAP access exposes the full Active Directory directory structure to any network-connected attacker. User account names, email addresses, group memberships, and organizational hierarchy can be enumerated without authentication. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Identify the domain controller at {{domain_controller_ip}} with LDAP service available on port {{ldap_port}}
1. Attempt an anonymous LDAP bind to {{domain_controller_ip}} using {{ldap_tool}}
1. Confirm the bind succeeds without providing credentials
1. Execute an LDAP search query for {{search_base}} to enumerate user objects at {{search_filter}}
1. Retrieve directory information including {{enumerated_attributes}} for the returned objects
1. Confirm that sensitive directory data such as {{example_data}} is returned without authentication

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
