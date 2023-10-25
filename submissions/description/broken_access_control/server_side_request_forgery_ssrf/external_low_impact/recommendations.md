# Recommendation(s)

TThere is no single technique to stop SSRF from occurring. However, implementing the right combination of defensive measures within the application will prevent and limit the impact of SSRF. Some best practices include the following:

- Within the application layer, use allow lists for input validation
- Within the network layer, apply segregation principles to limit the network access of the application to only areas of the network it needs to connect to
- Validate any external domain or IP address that the application attempts send a request to
- Display generic error handling messages to the client when an error occurs, and for all error types. E.g. When invalid data is received and when a request fails server-side.

For more information, refer to the following resources:

- <https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html>
- <https://portswigger.net/web-security/ssrf>
- <https://owasp.org/Top10/A10_2021-Server-Side_Request_Forgery_%28SSRF%29/>
