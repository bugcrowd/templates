Publicly accessible IAM credentials occur when cloud access keys, secret keys, or other authentication tokens are exposed in public repositories, such as GitHub or public S3 buckets, logs, or insecure configurations. These credentials grant direct access to cloud accounts and resources. An attacker identifying these credentials can immediately gain unauthorized access, bypassing traditional security controls.

**Business Impact**

This vulnerability can result in data theft, deletion of critical resources, deployment of malicious infrastructure, and significant financial fraud. The business can face severe reputational damage, regulatory non-compliance, and loss of data and customer trust.

**Steps to Reproduce**

1. Use public code scanning tools, search engines, or specific credential-finding tools to search for exposed cloud credentials: {{tool or search query}}
1. Observe that a set of publicly accessible IAM access keys and secret keys is visible at the following location: {{location of exposed credentials}}
1. Run the following command to list or access resources in the associated cloud account: {{test PoC command}}
1. Observe that access is gained to the cloud account and its resources

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
