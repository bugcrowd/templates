# Recommendations(s)

The application should avoid incorporating user-controlled data within redirect targets. This can be achieved by removing the redirect function and replacing it with direct links to the appropriate URL. Additionally, a server-side allow list of trusted URLs can be used as permitted redirect URLs that the website can link to.

It is recommended best practice that all redirects go through an intermediate disclaimer page that notifies the user that they are navigating away from the website.

For more information, see Open Web Application Security Project (OWASP):
<https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html>
