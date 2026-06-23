# recommendation(s)

There is no single technique to protect fromd SSCM abuse. However, the following best practices should be adhered to:

- Disable automatic client push installation and use alternative client deployment methods, such as Group Policy-based installation, manual push with Kerberos enforcement, or task sequence-based deployment.
- If client push installation must remain enabled, restrict the push installation account to the minimum required permissions, enforce SMB signing on all endpoints, and enable EPA. Remove local administrator rights from the push installation account where possible. Consider using PKI-based client authentication to eliminate NTLM dependency.
