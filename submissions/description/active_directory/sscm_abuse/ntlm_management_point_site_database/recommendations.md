# recommendation(s)

There is no single technique to protect fromd SSCM abuse. However, the following best practices should be adhered to:

- Enforce Kerberos authentication between the management point and the site database
- Enable SMB signing on all SCCM site systems
- Disable NTLM authentication where possible via Group Policy
- Ensure the management point and site database communicate over a secured and segmented network
