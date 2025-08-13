The SSH (Secure Shell) server was configured to accept password authentication and direct login by the root user.

Password-based authentication is susceptible to brute-force attacks, especially when weak passwords are in use. This increases the likelihood of an attacker gaining unauthorised access to the host. Furthermore, if a brute-force attack is successful against the root user, this would grant the attacker administrator privileges over the vulnerable system.

**Business Risk**

Allowing weaker authentication mechanisms may lead to the system being compromised in the event that a brute-force password guessing attack is successful. Malicious actions such as data exfiltration, modification and service disruption from the compromised host may result in financial loss and reputation damage.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
