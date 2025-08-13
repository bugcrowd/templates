The Windows Lightweight Directory Access Protocol (LDAP) server allows anonymous binds. 

By default, Microsoft Windows Server 2003 and later versions restrict anonymous LDAP operations, with the exception of rootDSE searches and binds. However, anonymous binds may still be encountered on older implementations, such as Windows 2000-based domain controllers, or in more modern environments where this default security setting has been overridden.

When anonymous binds are permitted, any user can connect to the directory service and query it for information without providing authentication credentials (i.e., with an empty bind Distinguished Name (DN) and password). The information returned from the LDAP server can include details about users, group memberships, domain-joined devices, password policy, and more. 

This information can be leveraged by an attacker to inform further attacks with the aims of gaining a foothold on the domain. For example, the enumerated details may be used to perform targeted phishing attempts, identify valid users for brute-force password guessing attacks, and map valuable targets for further compromise.

**Business Risk**

This vulnerability may lead to indirect financial loss and reputational damage if the information exposed by the service is leveraged in more advanced attacks.

**Steps to Reproduce**

<Provide numbered steps to reproduce this issue in the context of the in-scope domain>

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
