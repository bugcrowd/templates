# Recommendation(s)

There is no single technique to prevent excessive insecure output handling from occurring. Implementing the following defensive measures in the LLM can prevent and limit the impact of the vulnerability:

- Apply input validation and sanitization principles for all LLM outputs.
- Use JavaScript or Markdown to sanitize LLM model outputs that are returned to the user.
- Use Role Based Access Controls (RBAC) or Identity Access Management (IAM) for access to backend systems or when performing privileged operations. Apply the principle of least privilege to restrict the LLM's access to backend systems to that which is strictly necessary for its intended functionality.
- For privileged operations, require user interaction to approve any authorized action that would be performed on behalf of them.
- Treat user input, external input, and the LLM as untrusted input sources.
- Establish trust boundaries between external sources, the LLM, any plugins, and any neighboring systems.
- Limit the tools, plugins, and functions that the LLM can access to the minimum necessary for intended functionality.
- Log and monitor all activity of the LLM and the systems it is connected to.

For more information, refer to the following resources:

- <https://owasp.org/www-project-top-10-for-large-language-model-applications/>
- <https://owasp-aasvs4.readthedocs.io/en/latest/V5.html#validation-sanitization-and-encoding>
