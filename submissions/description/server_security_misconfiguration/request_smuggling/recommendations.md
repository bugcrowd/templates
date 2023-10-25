# Recommendation(s)

There is no single technique to prevent HTTP request smuggling vulnerabilities. However, implementing the right combination of defensive measures within the application will prevent and limit the impact of these vulnerabilities. Some best practices include the following:

- Reduce ambiguities in the interpretation and configuration of server protocols. This includes interpreting HTTP headers consistently across front-end and back-end servers.
- Ensure servers are communicating via the HTTP/2 protocol end-to-end as this reduces the variants of HTTP request smuggling attacks that the servers will be vulnerable to.
- Use a web application firewall (WAF) and configure it to close connections where the Transfer-Encoding or Content-Length headers are different.

For more information, please see the following guides:

- <https://cwe.mitre.org/data/definitions/444.html>
- <https://capec.mitre.org/data/definitions/33.html>
