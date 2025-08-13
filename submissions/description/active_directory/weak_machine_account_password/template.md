A workstation/server was configured with a weak computer account password, which allowed the system to be compromised via a “Timeroasting” attack.

Timeroasting is a technique which abuses the Windows authentication mechanism of the Network Time Protocol (NTP) to extract password hashes for computer accounts.

The Network Time Protocol enables domain-joined computers to synchronise their clocks with a Domain Controller (DC), which acts as the centralised time server. Due to concerns with time spoofing, Microsoft implemented an extension to the protocol (MS-SNTP) to provide a means for the time server (DC) to verify its identity. In this process, the clients (computer accounts) supply their RIDs in requests to the time server, which in turn looks up the corresponding computer account and generates a response using its password hash. Whilst this extension addresses time spoofing concerns, it also allows any unauthenticated user to retrieve and subject password hashes for any computer account in the domain to brute-force password cracking techniques. 

By default, machine account management for domain-joined systems is automated in Windows systems to ensure that suitably secure values are set for passwords and rotated every 30 days. As a result, machine account passwords typically do not represent attractive candidates for brute force cracking techniques. However, machine account passwords can become vulnerable when weak values are manually set by system administrators, or when the machine was enabled to be pre-windows 2000 compatible (in which case the initial password matches the first 14 characters of the computer name).

**Business Risk**

This vulnerability could allow an unauthenticated attacker to gain a foothold on the domain or pursue lateral movement vectors. In turn, this would allow unauthorized access, data theft, and malicious activities. Such incidents can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
