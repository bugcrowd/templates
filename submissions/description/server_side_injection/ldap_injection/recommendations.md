# Recommendation(s)

Just like other injection attack vulnerabilities, the primary defense against LDAP injection is proper input validation. Unfortunately, there are no prepared statements interfaces for LDAP like those used in SQL. Therefore, the most effective solution is a strong validation of untrusted input. If you can properly encode and sanitize all input in the application layer, then you can significantly minimize the possibilities of these threats. 

Here are some other secure coding practices that can help you avoid LDAP injections:

* Whitelist input validation
* Escaping all variables using the right encoding functions
* Indexing of fields containing sensitive information such as user passwords
* Output regulation
* Performing dynamic checks
* Static source code analysis
 

Other than the above practices, it is important to ensure your LDAP environment is safely configured. As a norm, always safeguard sensitive information in the LDAP directory. Configuring user permissions safely is especially important for directories used for logging purposes on mobile and web applications.
