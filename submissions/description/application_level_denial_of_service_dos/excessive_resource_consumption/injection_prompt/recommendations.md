# Recommendation(s)

There is no single technique to prevent injection from occurring. Implementing the following defensive measures in the LLM can prevent and limit the impact of the vulnerability:

- Validate, sanitize, and treat any user or external inputs as untrusted input sources.
- Establish input limits using the LLM's context window to prevent resource exhaustion.
- Enforce API rate limits that restrict the number of requests that can be made in a specific time frame.
- Limit computational resource use per request.

For more information, refer to the following resources:

- <https://owasp.org/www-project-top-10-for-large-language-model-applications/>
- <https://owasp.org/www-community/attacks/Denial_of_Service>
