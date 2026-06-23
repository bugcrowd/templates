# recommendation(s)

There is no single technique to protect from distribution point anonymous access abuse. However, the following best practices should be adhered to:

- Disable anonymous access on all distribution points and require HTTPS client communication.
- Audit all hosted packages and scripts for hardcoded credentials and replace them with secure credential retrieval methods such as task sequence variables stored with encryption. 
- Enable Enhanced HTTP or full PKI mode for SCCM client communication to enforce mutual authentication.
