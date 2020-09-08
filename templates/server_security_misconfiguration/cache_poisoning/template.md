# Description


# Reproduction Steps


# References

- https://portswigger.net/blog/practical-web-cache-poisoning


# Remediation Advice

The most robust defense against cache poisoning is to disable caching. This is plainly unrealistic advice for some, but it's likely that some websites that start using a service like Cloudflare for DDoS protection or easy SSL end up vulnerable to cache poisoning simply because caching is enabled by default.

Restricting caching to purely static responses is also effective, provided you're sufficiently wary about what you define as 'static'.

Likewise, avoiding taking input from headers and cookies is an effective way to prevent cache poisoning, but it's hard to know if other layers and frameworks are sneaking in support for extra headers. You might want to audit every page of your application with Param Miner to flush out unkeyed inputs.

Once you've identified unkeyed inputs in your application, the ideal solution is to outright disable them. Failing that, you could strip the inputs at the cache layer, or add them to the cache key. Some caches let you use the Vary header to key unkeyed inputs, and others let you define custom cache keys but may restrict this feature to 'enterprise' customers.

Finally, regardless of whether your application has a cache, some of your clients may have a cache at their end and as such client-side vulnerabilities like XSS in HTTP headers should never be ignored.