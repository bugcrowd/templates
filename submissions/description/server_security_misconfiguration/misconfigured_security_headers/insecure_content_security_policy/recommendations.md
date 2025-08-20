**Recommendation**

The `Content-Security-Policy` header should be configured in a way that reduces the attack surface of the application. The CSP header is not set as a default catch-all, due to its permissive design. Therefore, It is important to ensure that the CSP header is not too permissive for the application's needs, and has directives appropriately set.

For example, the `script-src` directive should have a value applied to block all inline scripts at a minimum. This will prevent the execution of JavaScript that has been injected into the page through cross-site scripting attacks. Furthermore, an allow list of external sources can be specified to prevent injection of Javascript from sources that lie outside of the page.

For more information, please see:

- <https://owasp.org/www-community/controls/Content_Security_Policy/>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP/>