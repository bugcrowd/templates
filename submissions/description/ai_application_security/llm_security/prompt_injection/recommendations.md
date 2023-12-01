# Recommendation(s)

There is no single technique to prevent prompt injection from occurring. Implementing the following defensive measures in the LLM can prevent and limit the impact of the vulnerability:

- Use privilege controls for access to backend systems or when performing privileged operations. Apply the principle of least privilege to restrict the LLM's access to backend systems to that which is strictly necessary for its intended functionality.
- For privileged operations, require user interaction to approve any authorized action that would be performed on behalf of them.
- Treat user input, external input, and the LLM as untrusted input sources.
- Establish trust boundaries between external sources, the LLM, any plugins, and any neighboring systems.

For more information, refer to the following resources:

- <https://owasp.org/www-project-top-10-for-large-language-model-applications/>
- <https://aivillage.org/large%20language%20models/threat-modeling-llm/>
