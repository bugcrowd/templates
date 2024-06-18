# Missing Subresource Integrity (SRI)

## Overview of the Vulnerability

Subresource Integrity (SRI) is a security feature that helps ensure the integrity and authenticity of externally loaded resources that are included in a web application, such as scripts, stylesheets, or images. While not a vulnerability within itself, missing SRI in a web application can allow an attacker to modify or replace external resources that can lead to the execution of malicious code. An attacker could achieve this by compromising the server hosting the resource, intercepting network traffic, or by leveraging weaknesses in the supply chain.

## Business Impact

Missing SRI could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
2. Open Developer Tools and navigate to the Elements tab.
3. Search for `<script>` and `<link>` tags that load external resources.
4. Observe that the following tags are missing an `integrity` attribute:

> - <List of tags missing an 'integrity' attribute>

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
