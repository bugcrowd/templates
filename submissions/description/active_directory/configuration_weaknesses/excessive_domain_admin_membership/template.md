It was identified that too many user accounts are members of the Domain Admins, Enterprise Admins, or other highly privileged Active Directory groups. Each account in these groups has full administrative control over the entire domain or forest. A large number of privileged accounts increases the attack surface for credential theft, phishing, and Kerberoasting. If any one of these accounts is compromised through password cracking, phishing, or credential dumping, an attacker gains full domain administrative privileges.

**Business Risk**

Excessive membership increases the probability that at least one account has a weak password, is targeted by phishing, or is used on a compromised workstation. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Enumerate the membership of the Domain Admins group in {{domain_name}} using {{enumeration_tool}}
1. Enumerate the membership of the Enterprise Admins and Schema Admins groups using {{enumeration_tool}}
1. Document the total number of accounts in each privileged group at {{admin_count}}
1. Identify accounts in privileged groups that do not require domain-level administrative access, such as {{example_unnecessary_account}}
1. Compare the observed membership count against the organization's operational requirements documented at {{baseline_reference}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
