Active Directory accounts that have not been used for authentication in over 90 dayshave been identified. These accounts are often forgotten service accounts, former employee accounts, or test accounts that were never disabled. An attacker can target dormant accounts for password spraying or brute-force attacks because they are less likely to be monitored, less likely to trigger user-reported alerts, and may have weak or never-rotated passwords. If a dormant account holds group memberships or access permissions, compromising it grants the attacker those same privileges. This allows an attacker to gain an authenticated foothold in the domain through an account that is unlikely to be noticed.

**Business Risk**

Dormant accounts represent unmonitored entry points into the domain. Compromising a dormant account is less likely to trigger security alerts or be reported by a legitimate user. This could result in indirect financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised

**Steps to Reproduce**

1. Authenticate to the domain as {{low_privileged_user}} from {{attacker_host}}
1. Query Active Directory for user accounts with a lastLogonTimestamp older than 90 days using {{query_tool}} against {{domain_controller}}
1. Filter the results to show only enabled accounts at {{filter_criteria}}
1. Identify {{dormant_account_count}} enabled accounts that have not authenticated in over 90 days
1. Document representative dormant accounts including {{example_account}} with last logon at {{last_logon_date}}
1. Verify the group memberships of {{example_account}} to assess the potential access granted if compromised at {{group_membership}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
