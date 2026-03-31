Kerberoasting is an attack against Active Directory service accounts that have a Service Principal Name (SPN) registered. Any authenticated domain user can request a Kerberos service ticket (TGS) for any SPN in the domain. The service ticket is encrypted using the service account's password hash. An attacker with a low-privileged domain account can request TGS tickets for all accounts with SPNs and then perform offline brute-force or dictionary attacks against the ticket encryption to recover the service account's plaintext password. Service accounts frequently have weak or long-lived passwords and elevated domain privileges. This allows an attacker to recover service account credentials and use them for lateral movement or privilege escalation.

**Business Risk**

Kerberoasting allows any authenticated domain user to target service account credentials for offline cracking. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Enumerate accounts with registered SPNs in {{domain_name}} using {{enumeration_tool}}
1. Identify the target service account {{service_account}} with SPN {{spn_value}}.
1. Request a TGS ticket for {{spn_value}} using {{ticket_request_tool}}
1. Export the TGS ticket and perform offline password cracking using {{cracking_tool}} with {{wordlist}}
1. Confirm that the plaintext password for {{service_account}} is recovered

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
