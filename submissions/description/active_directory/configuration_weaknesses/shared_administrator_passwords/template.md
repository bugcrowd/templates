Shared administrator passwords is a configuration weakness where multiple systems in the Active Directory environment use the same local administrator password. This commonly occurs when the local administrator account is configured through Group Policy Preferences, a golden image, or manual deployment without unique password management. An attacker who recovers the local administrator password from any single system can use the same credential to authenticate to all systems sharing that password. This enables lateral movement across the entire environment without needing additional credential theft or exploitation.

**Business Risk**

Shared local administrator passwords allow a single credential compromise to grant access to every system using the same password. An attacker can move laterally across workstations, servers, and infrastructure systems without triggering additional authentication failures. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised

**Steps to Reproduce**

1. Obtain local administrator access on {{initial_system}} using {{initial_access_method}}
1. Extract the local administrator password hash from {{initial_system}} using {{credential_extraction_tool}}
1. Attempt to authenticate to {{second_system}} using the same local administrator credential via {{authentication_method}}
1. Confirm successful authentication on {{second_system}} with local administrator privileges
1. Repeat authentication against {{additional_systems}} to demonstrate the scope of password reuse
1. Document the total number of systems accessible using the shared credential at {{reuse_count}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
