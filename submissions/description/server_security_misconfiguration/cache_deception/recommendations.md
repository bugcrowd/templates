# Recommendation(s)

The most effective way to prevent cache deception is to carefully control which responses are cached and to avoid caching responses that contain user-specific or sensitive data.

Ensure that authentication-protected pages and any responses containing sensitive information explicitly disable caching via headers such as `Cache-Control: no-store, no-cache, must-revalidate` and `Pragma: no-cache`.

Be particularly cautious with URL structures. Cache deception attacks often rely on tricking the cache into treating dynamic responses as static. A simple mitigation is to ensure that URLs ending in extensions like `.css`, `.js`, `.png`, etc., only serve static content and do not process dynamic requests.

For additional protection, configure your cache layer to only cache responses from a predefined allowlist of safe URL patterns. This prevents attackers from injecting deceptive paths that lead to cached sensitive data.

Auditing your cache behavior using tools like Param Miner or manual testing can help identify and eliminate unintended caching of sensitive responses. Additionally, security headers such as `X-Content-Type-Options: nosniff` can help prevent certain forms of cache-related attacks.

Finally, if your application uses a CDN or a reverse proxy (e.g., Cloudflare, Akamai, Varnish), ensure that caching rules are correctly configured to prevent caching of personalized or user-specific content.

For more information, refer to the following resource:
<https://portswigger.net/web-security/web-cache-deception>
