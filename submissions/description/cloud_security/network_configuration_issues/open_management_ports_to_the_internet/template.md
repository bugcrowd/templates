Open management ports can be directly exposed to the public internet without proper restrictions. This allows an attacker a direct pathway to sensitive systems, often bypassing other layers of security. Attacks such as brute-force attacks, credential stuffing, or exploitation of known vulnerabilities in these services become trivial.

**Business Impact**

This vulnerability can lead to reputational damage and loss of customer trust, as well as potential regulatory fines and legal action.

**Steps to Reproduce**

1. Use a port scanning tool or public internet scanner to identify cloud instances with open management ports: {{scanning tool}}
2. Identify an instance with a commonly exposed management port (e.g., 22, 3389, 8080, 27017) open to `0.0.0.0/0` or a broad IP range: {{exposed ip and port}}
3. Connect to the exposed port using a standard client for that service: {{connection command}}
4. Observe that a connection is successfully established, demonstrating direct internet exposure of the management interface.

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
