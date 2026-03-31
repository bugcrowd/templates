# recommendation(s)

There is no single technique to protect fromd SSCM abuse. However, the following best practices should be adhered to:

- Enforce Kerberos authentication between all SCCM site systems and enable SMB signing and EPA on all site system roles.
- Disable NTLM authentication for SCCM inter-site communication where supported
- Segment SCCM site systems on a dedicated management network
- Apply the principle of least privilege to the site server account
- Enable HTTPS communication between all site system roles
