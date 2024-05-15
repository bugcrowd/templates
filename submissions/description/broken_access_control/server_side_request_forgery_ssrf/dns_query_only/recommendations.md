# Recommendation(s)

There is no single technique to stop SSRF from occurring. However, implementing the right combination of defensive measures within the application can prevent and limit the impact of SSRF. Some best practices include the following:

- Sanitize user input to only include expected values
- Within the application layer, use an allow list for approved DNS servers that the application can query. Additionally, rate limit the number of DNS queries that can be requested within a certain period of time
- Within the network layer, apply segregation principles to limit the network access of the application to only needed areas of the network

For more information, refer to the following resources:

- <https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html>
- <https://portswigger.net/web-security/ssrf>
- <https://owasp.org/Top10/A01_2021-Broken_Access_Control/>
- <https://portswigger.net/web-security/access-control>
