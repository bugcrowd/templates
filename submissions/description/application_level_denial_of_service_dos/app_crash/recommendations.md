# Recommendation(s)

It is recommended to perform input validation to ensure that all inputs meet the expected format and content, while rejecting any malformed inputs. Input validation should consider limits to the total request, file upload, and extension sizes. It’s also important to implement exception handling so that the application gracefully handles errors without crashing. These preventative measures help against application-level DoS attacks.

For more information, refer to the following resources:

- <https://www.bugcrowd.com/glossary/application-level-denial-of-service-dos/>
- <https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html>
