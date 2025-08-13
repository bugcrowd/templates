The Remote Desktop Protocol (RDP) server was not configured to use Network Level Authentication (NLA) only.

Network level authentication is a security feature of Microsoft’s remote desktop protocol that requires users to authenticate before a session can be established with the remote device. Unlike traditional RDP connections, where the login screen is loaded before authentication, NLA ensures that credentials are validated prior to initiating the connection. This is a more secure authentication method which offers protection against Denial of Service (DoS) attacks which abuse unauthenticated requests to consume server resources, alongside reducing the risk of exposure to various threats that exploit the initial connection phase.

**Business Risk**

This vulnerability increases the service's exposure to attacks, including consumption of server resources, which may result in downtime for the affected host.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
