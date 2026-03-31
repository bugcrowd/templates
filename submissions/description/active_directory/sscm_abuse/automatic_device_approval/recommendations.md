# recommendation(s)

There is no single technique to protect fromdDistribution point anonymous access abuse. However, the following best practices should be adhered to:

- Change the site setting to require manual approval for new clients or to enforce PKI-based client authentication.
- Deploy SCCM in PKI mode so that only devices with a valid client certificate issued by the internal CA can register.
- Regularly review collection membership rules to limit which deployments are available to newly approved devices, and audit the list of approved clients on a regular schedule.
