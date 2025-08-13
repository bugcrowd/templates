Sensitive data was disclosed in network file shares which were accessible to all authenticated users in the Active Directory domain. 

Due to the permissive access controls, an attacker who had successfully compromised a domain user account could abuse this access to obtain a variety of sensitive data, including:

- Employee PII (e.g., HR records, payroll information)
- Customer data (e.g., contact lists, contract details)
- Financial documents (e.g., budgets, invoices, bank statements)
- Proprietary business plans or intellectual property

< Customise the above as needed > 

Furthermore, plaintext credentials were also discovered within the exposed shares. Equipped with these credentials, an attacker could look to compromise additional systems and accounts, or elevate privileges within the domain.

**Business Risk**

This vulnerability could be abused by an attacker to view, exfiltrate and potentially modify sensitive data. This could result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
