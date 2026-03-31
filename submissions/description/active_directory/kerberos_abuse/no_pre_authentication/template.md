A domain user was vulnerable to an attack referred to as ASREPRoasting due to preauthentication being disabled for the account. ASREPRoasting targets Active Directory user accounts that have the "Do not require Kerberos preauthentication" flag enabled. When preauthentication is disabled, an attacker can send an AS-REQ request for the account without providing a valid password. The domain controller responds with an AS-REP containing a portion encrypted with the user's password hash. An attacker does not need any domain credentials to perform this request against accounts with preauthentication disabled. This allows an attacker to gain authenticated domain access or, if the targeted account has elevated privileges, to escalate privileges within the domain.

**Business Risk**

This vulnerability could result in an attacker gaining a foothold or escalating privileges in the domain. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in significant financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Enumerate accounts with preauthentication disabled in {{domain_name}} using {{enumeration_tool}} from {{attacker_host}}
1. Identify the target account {{target_account}} with the DONT_REQUIRE_PREAUTH flag set
1. Send an AS-REQ request for {{target_account}} to the domain controller at {{domain_controller}} using {{asrep_tool}}
1. Capture the AS-REP response containing the encrypted portion of the ticket
1. Perform offline password cracking against the AS-REP hash using {{cracking_tool}} with {{wordlist}}
1. Confirm that the plaintext password for {{target_account}} is recovered

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
