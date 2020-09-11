## Description


## Reproduction Steps


## References

- [https://www.oauth.com/oauth2-servers/redirect-uris/](https://www.oauth.com/oauth2-servers/redirect-uris/)


## Remediation Advice

When the application starts the OAuth flow, it will direct the user to your service’s authorization endpoint. The request will have several parameters in the URL, including a redirect URL.

At this point, the authorization server must validate the redirect URL to ensure the URL in the request matches one of the registered URLs for the application. The request will also have a client_id parameter, so the service should look up the redirect URLs based on that. It is entirely possible for an attacker to craft an authorization request with one app’s client ID and the attacker’s redirect URL, which is why registration is required.

The service should look for an exact match of the URL, and avoid matching on only part of the specific URL. (The client can use the state parameter if it needs to customize each request.) Simple string matching is sufficient since the redirect URL can’t be customized per request. All the server needs to do is check that the redirect URL in the request matches one of the redirect URLs the developer entered when registering their application.

If the redirect URL is not one of the registered redirect URLs, then the server must immediately show an error indicating such, and not redirect the user. This avoids having your authorization server be used as an open redirector.

