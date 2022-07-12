# Recommendation(s)

There is no single technique to prevent clickjacking attacks from occurring. However, there are multiple levels of defensive strategies that can be implemented to protect from clickjacking attacks. Some best practices include using appropriate HTTP response headers to ensure the browser disallows framing, or controls which domains it can occur from. These should be customized specific to the application and its environment. For example:

``` HTTP
X-Frame-Options: DENY
Content-Security-Policy: frame-ancestors 'none';
```

For more information, please see:

- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options>
- <https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/frame-ancestors>
- <https://portswigger.net/web-security/clickjacking>
