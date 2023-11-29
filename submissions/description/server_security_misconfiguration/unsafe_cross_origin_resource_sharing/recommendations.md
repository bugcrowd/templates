# Recommendation(s)

To prevent Cross-Origin Resource Sharing (CORS) attacks the cross-origin requests need to be properly configured. This includes not using `null` and instead using a strict allow list of trusted sites in the `Access-Control-Allow-Origin` header. It is also good practice to not use wildcards (`*`) for internal networks, and include further server-side protections for sensitive data.

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS>
- <https://fetch.spec.whatwg.org/#http-cors-protocol>
