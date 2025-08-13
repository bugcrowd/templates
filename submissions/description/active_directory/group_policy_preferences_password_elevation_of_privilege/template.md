The Group Policy implementation was vulnerable to Microsoft Security Bulletin MS14-025, which allows an attacker to retrieve and decrypt passwords stored within Group Policy Preferences (GPP).

In Older Windows servers, when GPP are used to deploy local user accounts, the passwords for these accounts are stored as encrypted strings within XML files (e.g., Groups.xml, Services.xml, ScheduledTasks.xml) hosted on the SYSVOL share. The private key used to encrypt the stored passwords has been publicly shared by Microsoft. 

As SYSVOL is accessible to all authenticated users, an attacker in possession of a domain account can search the SYSVOL share for XML files containing stored passwords. With access to the XML file(s), the attacker could then use the publicly available encryption key to decrypt the GPP password and retrieve the plaintext credential(s). This presents a trivial attack vector for a malicious user to escalate privileges or gain lateral movement within the domain.

**Business Risk**

An attacker could leverage the credentials obtained through this vulnerability to escalate privileges or exploit lateral movement vectors. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
