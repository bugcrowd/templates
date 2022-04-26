# Disclosure of Secrets for a Publicly Accessible Asset

## Overview of the Vulnerability

Disclosure of secrets for a publicly available asset occurs when sensitive data is not behind an authorization barrier. When this information is exposed it can place sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as not encrypting data, secrets committed to GitHub within public repositories, or exposed external assets. Disclosure of secrets for publicly available assets could be leveraged by an attacker to gain privileged access to the application or the environment where the application is hosted. From here, an attacker could execute functions under the guise of an Administrator user, depending on the permissions level they are able to access.

## Business Impact

Disclosure of secrets for a publicly available asset can lead to indirect financial loss due to an attacker accessing, deleting, or modifying data from within the application. Reputational damage for the business can also occur via the impact to customers’ trust that these events create. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Use a browser to navigate to: {{url}}/data/
1. Observe that secrets are being disclosed

1. Use a browser to navigate to: {{URL}}/data-disclosed/
1. Crawl open source databases and publicly accessible data for secrets
1. Observe that the following endpoint reveals secret data:

{{screenshot}}

## Proof of Concept (PoC)

The exposed secrets for this publicly accessible asset can be seen in the screenshot below:

{{screenshot}}
