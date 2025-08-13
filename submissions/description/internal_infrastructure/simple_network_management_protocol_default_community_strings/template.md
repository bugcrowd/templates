The Simple Network Management Protocol (SNMP) server could be accessed using a default community string. 

SNMP provides monitoring capabilities to collect and poll information about devices (referred to as ‘agents’) on the network. In SNMP version 1 and 2c, access is commonly configured with default community strings to provide read-only and read-write access.

If default community strings have not been updated to complex and secure values, an attacker located within the internal network could abuse this access to enumerate sensitive network configuration information. This may include; running processes, installed software, system info, hostnames, users, shares, services, listening ports, and any stored credentials. 

If write access is gained, an attacker could also modify configuration information. For example, it may be possible to change routing information, shutdown network interfaces, reboot systems, reset device passwords and more. In some cases, write access can also lead to remote code execution.

**Business Risk**

This vulnerability may lead to indirect financial loss and reputational damage if the information exposed by the service is leveraged in more advanced attacks or modified to compromise the system.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
