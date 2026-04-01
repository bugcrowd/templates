Active Directory (AD) configuration weaknesses are insecure settings in the domain environment that increase the attack surface for credential theft, privilege escalation, and domain compromise. Common weaknesses include weak password policies, excessive privileged group membership, and shared local administrator passwords, amongst others. These confoguration weaknesses reduce the effort needed for an attacker to compromise the domain.

**Business Risk**

This vulnerability may lead to an attacker compromising the affected user accounts. The extent of malicious impact is dependent on the permissions of the compromised user.

**Steps to Reproduce**

1. Authenticate to the domain as a low privileged user from {{attacker_host}}
1. Enumerate the specific configuration weaknesses in the domain
1. Compare and the observed configuration against the security baseline at {{baseline_reference}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
