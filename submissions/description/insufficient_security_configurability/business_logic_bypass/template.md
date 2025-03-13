Business logic vulnerabilities occur due to logic flaws in an applications workflow, often stemming from mistaken expectations regarding user behaviour. This can lead to a condition where failure to anticipate unexpected states during the design and implementation of the application results in a malicious user being able to trigger unintended behaviour.

An attacker may exploit this vulnerability to manipulate workflows, abuse legitimate features and functionality, or bypass traditional security controls.

{{Describe the application logic bypass identified in the in-scope application}}

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

**Steps to Reproduce**

1. Step 1
1. Step 2, with context:
    ```http
    POST /example HTTP/2
    Host: example.com

    {"param":"value"}
    ```