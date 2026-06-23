Discretionary Access Control List (DACL) abuse is a vulnerability in Active Directory where misconfigured object permissions grant low-privileged users dangerous rights over other objects in the directory. Common exploitable permissions include GenericAll, GenericWrite, WriteDACL, WriteOwner, ForceChangePassword, and AddMember on user accounts, groups, computer objects, or organizational units. An attacker with a low-privileged domain account can enumerate DACLs across the directory to identify objects where they (or their group memberships) hold excessive permissions, then escalate their privilege from a low-privileged domain user to a domain administrator.

**Business Risk**

Misconfigured DACLs allow low-privileged users to modify critical Active Directory objects without needing to exploit a software vulnerability. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Enumerate DACL permissions across Active Directory objects in {{domain_name}} using {{enumeration_tool}}
1. Identify the target object {{target_object}} where {{low_privileged_user}} or a group it belongs to holds {{dangerous_permission}}
1. Exploit the identified permission on {{target_object}} by executing {{exploitation_action}} using {{exploitation_tool}}
1. Confirm that {{exploitation_result}} was achieved, such as group membership change or password reset
1. Validate the escalated access by authenticating to {{domain_controller}} with the modified privileges

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
