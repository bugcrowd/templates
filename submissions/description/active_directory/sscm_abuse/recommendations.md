# recommendation(s)

There is no single technique to protect from SSCM abuse. However, the following best practices should be adhered to:

- Enforce HTTPS communication between all site systems, require PKI-based client authentication, disable automatic client push installation, and remove all stored credentials from task sequences and the Network Access Account. 
- Enforce SMB signing on all SCCM site systems and enable Extended Protection for Authentication on the site database SQL instance, and segment SCCM management traffic on a dedicated network.
- Audit all task sequences and collection variables for embedded credentials and replace them with secure alternatives. 
- Require PXE boot passwords on all deployment task sequences.

For more information, view the following resources:

- <https://learn.microsoft.com/en-us/mem/configmgr/core/plan-design/security/plan-for-security>
- <https://learn.microsoft.com/en-us/mem/configmgr/osd/plan-design/security-and-privacy-for-operating-system-deployment>
- <https://cheatsheetseries.owasp.org/cheatsheets/Access_Control_Cheat_Sheet.html>
