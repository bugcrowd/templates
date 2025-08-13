An X11 (X Windows) server was accessible without requiring authentication. This configuration, often referred to as "Open" access, allows any client on the network to connect to the X server and interact with the graphical display environment.

An attacker with network access can leverage this configuration to perform various malicious actions, including: capturing screenshots of the graphical display, logging keystrokes, and executing arbitrary commands on the system in the context of the user running the X server.

**Business Risk**

This vulnerability could lead to unauthorised system access, theft and manipulation of sensitive data. Such incidents can impact the organisation's operational security, result in financial losses, and damage the organisation's reputation, especially if customer data or critical business operations are compromised.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
