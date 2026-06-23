# recommendation(s)

Disable anonymous LDAP binds by modifying the `dsHeuristics` attribute on the Directory Service configuration object. Additionally, enforce LDAP signing and channel binding on all domain controllers to prevent LDAP interception attacks. Restrict network access to LDAP ports using firewall rules to limit connections to authorized management networks.
