## Description


## Reproduction Steps


## References

- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/HTML5_Security_Cheat_Sheet.md#cross-origin-resource-sharing
- https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS


## Remediation Advice

1. **Origin & Access-Control-Allow-Origin:** The Origin header is always sent by the browser in a `CORS` request and indicates the origin of the request. The Origin header can not be changed from JavaScript however relying on this header for Access Control checks is not a good idea as it may be spoofed outside the browser, so you still need to check that application-level protocols are used to protect sensitive data.
2. **Access-Control-Allow-Origin** is a response header used by a server to indicate which domains are allowed to read the response. Based on the `CORS W3 Specification` it is up to the client to determine and enforce the restriction of whether the client has access to the response data based on this header.
3. Make sure that there are no insecure configurations using a wildcard as value which looks like `Access-Control-Allow-Origin: *` as this header means all domains are allowed access to the resource. 
4. Make sure that when the server returns back the Origin header that there are additional checks so that access of sensitive data is not allowed.
5. The `Access-Control-Request-Method` header is used when a browser performs a preflight `OPTIONS` request and let the client indicate the request method of the final request. On the other hand, the `Access-Control-Allow-Method` is a response header used by the server to describe the methods the clients are allowed to use.
6. **Access-Control-Request-Headers & Access-Control-Allow-Headers:** These two headers are used between the browser and the server to determine which headers can be used to perform a cross-origin request.
7. **Access-Control-Allow-Credentials:** This header as part of a preflight request indicates that the final request can include user credentials.
8. **Input validation:** XMLHttpRequest L2 (or XHR L2) introduces the possibility of creating a cross-domain request using the XHR API for backwards compatibility. This can introduce security vulnerabilities that in XHR L1 were not present. Interesting points of the code to exploit would be URLs that are passed to XMLHttpRequest without validation, specially if absolute URLS are allowed because that could lead to code injection. Likewise, other part of the application that can be exploited is if the response data is not escaped and we can control it by providing user-supplied input.
9. **Other headers:** There are other headers involved like Access-Control-Max-Age that determines the time a preflight request can be cached in the browser, or Access-Control-Expose-Headers that indicates which headers are safe to expose to the API of a CORS API specification, both are response headers specified in the CORS W3C document.
