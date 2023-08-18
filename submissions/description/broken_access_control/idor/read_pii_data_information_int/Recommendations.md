# Recommendation(s)

Preventing IDOR involves ensuring that each user accessible object is sufficiently protected. When an object is requested by an untrusted source, each request should pass through an access control check to ensure that the user has authorization to access that object.

These authorization checks should also occur when a known user requests a resource so that the users can only access data from within their intended permissions group.

Additionally, hash functions and hashed strings should be used to map an object instead of a direct ID, so that it is not a predictable value and easily guessed.

For more information, refer to the following resource:

- <https://cheatsheetseries.owasp.org/cheatsheets/Insecure_Direct_Object_Reference_Prevention_Cheat_Sheet.html>
