# Recommendation(s)

It is recommended to perform input validation to ensure that all inputs, including the URL Schemes sent to your application, meet the expected format and content while rejecting any malformed inputs. This can include limiting URL Schemes to ones that are expected or known in order to prevent attackers from using other URL Schemes to trigger crashes. It’s also important to implement exception handling so that the application gracefully handles errors without crashing.

For more information, refer to the following resources:

- <https://www.bugcrowd.com/glossary/application-level-denial-of-service-dos/>
- <https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html>
