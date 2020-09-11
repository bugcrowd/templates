## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/Top_10_2013-A7-Missing_Function_Level_Access_Control](https://www.owasp.org/index.php/Top_10_2013-A7-Missing_Function_Level_Access_Control)
- [http://projects.webappsec.org/w/page/13246913/Abuse%20of%20Functionality](http://projects.webappsec.org/w/page/13246913/Abuse%20of%20Functionality)
- [http://resources.infosecinstitute.com/the-ssrf-vulnerability/](http://resources.infosecinstitute.com/the-ssrf-vulnerability/)
- [https://www.bishopfox.com/blog/2015/04/vulnerable-by-design-understanding-server-side-request-forgery/](https://www.bishopfox.com/blog/2015/04/vulnerable-by-design-understanding-server-side-request-forgery/)
- [http://niiconsulting.com/checkmate/2015/04/server-side-request-forgery-ssrf/](http://niiconsulting.com/checkmate/2015/04/server-side-request-forgery-ssrf/)


## Remediation Advice

1. **Error handling and messages:** Display generic error messages to the client in case something goes wrong. If content type validation fails, display generic errors to the client like _“Invalid Data retrieved”_. Also ensure that the message is the same when the request fails on the backend and if invalid data is received. This will prevent the application from being abused as distinct error messages will be absent for closed and open ports. Under no circumstance should the raw response received from the remote server be displayed to the client.
2. **Response Handling:** Validating responses received from remote resources on the server side is the most basic mitigation that can be readily implemented. If a web application expects specific content type on the server, programmatically ensure that the data received satisfies checks imposed on the server before displaying or processing the data for the client.
3. **Disable unwanted protocols:** Allow only `http` and `https` to make requests to remote servers. Whitelisting these protocols will prevent the web application from making requests over other protocols like `file:///`, `gopher://`, `ftp://` and other URI schemes.
4. **Blacklist IP addresses:** Internal IP addresses, localhost specifications and internal hostnames can all be blacklisted to prevent the web application from being abused to fetch data/attack these devices. Implementing this will protect servers from one time attack vectors. For example, even if the first fix (above) is implemented, the data is still being sent to the remote service. If an attack that does not need to see responses is executed (like a buffer overflow exploit) then this fix can actually prevent data from ever reaching the vulnerable device. Response handling is then not required at all as a request was never made.

