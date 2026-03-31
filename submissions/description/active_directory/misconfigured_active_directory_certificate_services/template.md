Misconfigured Active Directory Certificate Services (ADCS) is a vulnerability where certificate templates or enrollment permissions are configured in a way that allows a low-privileged user to request certificates that grant elevated privileges. An attacker with a low-privileged domain account can identify vulnerable templates, request a certificate with a SAN specifying a domain administrator, and use the issued certificate to authenticate as that administrator. This allows full domain compromise through certificate-based impersonation.

**Business Risk**

Misconfigured ADCS templates allow a low-privileged user to obtain certificates that impersonate domain administrators or other privileged accounts. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Enumerate vulnerable certificate templates on {{ca_server}} using {{enumeration_tool}}
1. Identify the vulnerable template {{template_name}} with {{misconfiguration_detail}}
1. Request a certificate from {{ca_server}} using template {{template_name}} with a SAN specifying {{target_privileged_account}}
1. Receive the issued certificate and use it to authenticate to {{domain_controller}} as {{target_privileged_account}} using {{authentication_tool}}
1. Confirm domain administrator access by executing {{verification_action}} on {{domain_controller}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
