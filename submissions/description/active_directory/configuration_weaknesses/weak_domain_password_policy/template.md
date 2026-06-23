A weak domain password policy is a configuration weakness where the Active Directory default domain password policy does not enforce sufficient complexity, length, or rotation requirements. Common weaknesses include minimum password lengths below 12 characters, disabled complexity requirements, no account lockout threshold, and excessively long maximum password ages. A weak policy allows attackers to crack password hashes obtained through techniques such as Kerberoasting or NTLM hash extraction using dictionary and brute-force attacks in a short time. The weak policy also increases the likelihood that users select easily guessable passwords. This weakness allows an attacker to gain authenticated access to domain resources and escalate privileges.

**Business Risk**

A weak password policy increases the success rate of password cracking and guessing attacks across the entire domain. Attackers who obtain password hashes through credential dumping, Kerberoasting, or network interception can crack weak passwords in minutes. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Retrieve the default domain password policy from {{domain_controller}} using {{policy_query_tool}}
1. Document the policy settings including minimum length at {{min_length}}, complexity requirement at {{complexity_setting}}, lockout threshold at {{lockout_threshold}}, and maximum password age at {{max_age}}
1. Compare the observed policy against industry benchmarks such as {{benchmark_reference}}
1. Demonstrate the weakness by performing a password spray or hash cracking exercise against {{test_target}} using {{attack_tool}}
1. Confirm that {{number_of_accounts}} accounts are compromised due to the weak policy settings

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
