The Intelligent Platform Management Interface (IPMI) on the host was affected by the “Cipher Zero” authentication bypass vulnerability.

IPMI is used by a server's Baseboard Management Controller (BMC) to provide out-of-band management and monitoring capabilities for remote systems. When IPMI is configured to support cipher suite 0 (aka cipher zero), password requirements can be bypassed to authenticate to the BMC with only a valid username (which can be readily found in vendor documentation detailing default accounts). 

Once access has been obtained, an attacker would gain administrator-level control over the underlying hardware for that system. This may include the ability to remotely power cycle systems, modify BIOS settings, deploy firmware, mount remote media, and access keyboard/video/mouse (KVM) functionality.

**Business Risk**

This vulnerability could lead to a malicious user gaining unauthorised hardware-level access to the affected server(s). This access could be abused to compromise the integrity and availability of the vulnerable systems. 

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
