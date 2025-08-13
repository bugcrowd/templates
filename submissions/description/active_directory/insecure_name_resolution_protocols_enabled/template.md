Link-Local Multicast Name Resolution (LLMNR) and NetBIOS Name Service (NBT-NS) are Microsoft Windows protocols for name resolution – translating hostnames to IP addresses.

Windows systems will fall back to name resolution via LLMNR and NBT-NS when DNS (Domain Name System) has failed to resolve a hostname in the local network. To resolve hostnames, these protocols initiate a broadcast message to the network requesting the address of the resource it needs.  

An attacker situated within the same network segment can exploit LLMNR and NBT-NS queries by replying with spoofed responses impersonating the requested hostname. This process, known as poisoning, tricks victims into communicating with the attacker-controlled system. If the query is for a resource that requires authentication (such as a fileshare), the victim's system will send the user’s Net-NTLM(v1/2) hash to the attacker's machine. 

After poisoning a hostname resolution query, an attacker can proceed by attempting to crack the retrieved password hash offline using brute force methods. More commonly, the attacker will relay the authentication to another target in order to perform actions on the targeted system with the privileges of the impersonated user. 

**Business Risk**

This vulnerability could allow an unauthenticated attacker situated within the network to compromise domain user accounts and gain lateral movement across systems in the domain. In turn, this could allow unauthorized access, data theft, and malicious activities. Such incidents can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
