Network configuration issues in cloud environments encompass a wide array of misconfigurations which can expose internal resources, allow unauthorized traffic. These network misconfigurations can allow an attacker to view or modify data, depending on the type of misconfiguration.

**Business Impact**

This vulnerability can lead to reputational damage and loss of customer trust, as well as regulatory fines and potential legal action.

**Steps to Reproduce**

1. Identify the cloud network component with a misconfiguration: {{network component}}
1. Send the following test traffic to a resource that should be isolated or blocked, or from a source that should be denied: {{test traffic}}
1. Observe that the unauthorized traffic is permitted, or that legitimate traffic is unexpectedly blocked, indicating a misconfiguration

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
