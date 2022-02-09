# Recommendations

A Cross-Site Request Forgery (CSRF) token should be included within all relevant requests. The CSRF token needs to be unpredictable, tied to a user's session, strictly validated before actions are executed, and not be stored within cookies.

CSRF tokens can be used to prevent CSRF attacks by making it near impossible for a malicious attacker to predict and construct a valid HTTP request of a user because they don't know the value of the CSRF token. Therefore, any request that a malicious attacker attempts to construct will not have all of the necessary parameters for the application to validate and execute the request.

For more information, please see:

- <https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html>
- <https://owasp.org/www-community/attacks/csrf>
