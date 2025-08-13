The Simple Mail Transfer Protocol (SMTP) server allowed unauthenticated users to enumerate valid users on the host. 

When connected to a mail server, common mail commands including EXPN, VRFY and RCPT TO can be used to infer the presence of valid users based on the responses returned by the server. When this functionality is available without authentication, it can be abused by an unauthenticated attacker to identify valid accounts on the system and leverage the discovered users in brute-force password guessing attacks.

**Business Risk**

This vulnerability may lead to indirect financial loss and reputational damage if an attacker is able to chain this vulnerability with another to achieve user account compromise and data exfiltration.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
