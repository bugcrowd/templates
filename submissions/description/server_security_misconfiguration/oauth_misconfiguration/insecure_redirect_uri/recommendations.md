# Recommendation(s)

There is no single technique to stop OAuth misconfigurations from occurring. However, securely implementing the OAuth workflow with the right combination of defensive measures can prevent and limit the impact of these OAuth misconfigurations. Some best practices include the following:

- Ensure that parameters within the OAuth workflow are validated, including the `redirect_uri` parameter. This can be performed through a strict allow list.
- Enable Cross-Site Request Forgery (CSRF) validation on endpoints
- Thoroughly validate input and use other preventative controls to limit Cross-Site Scripting (XSS). See the Open Web Application Security Project’s (OWASP) XSS prevention cheat sheet for more details: <https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html>
