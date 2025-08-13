The host supported Intelligent Platform Management Interface (IPMI) version 2.0, which is affected by an information disclosure vulnerability. 

IPMI is used by a server's Baseboard Management Controller (BMC) to provide out-of-band management and monitoring capabilities for remote systems.

The IPMI 2.0 authentication process requires the server to transmit a salted SHA1 or MD5 hash of the requested user's password to the client prior to authentication occurring. This can be leveraged by an attacker to obtain the password hash for any valid user account on the BMC.

Once obtained, these password hashes can be subjected to offline brute-force or dictionary attacks to recover the plaintext credentials. Successful recovery of these credentials grants an attacker access to the BMC, which provides control over the underlying hardware for that system and any other systems in the IPMI managed group. This may include the ability to remotely power cycle systems, modify BIOS settings, deploy firmware, mount remote media, and access keyboard/video/mouse (KVM) functionality.

**Business Risk**

This vulnerability could lead to a malicious user gaining unauthorised hardware-level access to the affected server(s). This access could be abused to compromise the integrity and availability of the vulnerable systems. 

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
