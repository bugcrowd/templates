# Recommendation(s)

There is no single technique to protect from Content Spoofing. However, the following best practices should be adhered to:

Validate all input data, including that which is reflected by a request parameter
passing HTML data via request parameters. Properly encode the HTML before passing it through a request parameter if there is no other way.
Refrain from displaying messages via request parameter. It is best practice to use temporary sessions instead.

For more information, please see:

- <https://capec.mitre.org/data/definitions/148.html>
- <https://owasp.org/www-community/attacks/Content_Spoofing>
- <https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html#output-encoding>
