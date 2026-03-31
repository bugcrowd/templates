The application exposes a `robots.txt` file at the web root that discloses internal URL paths, directory structures, or administrative endpoints. While `robots.txt` is intended to instruct search engine crawlers which paths to avoid indexing, the file is publicly accessible and readable by anyone. An attacker can user a `robots.txt` file to enumerate administrative panels, staging environments, API endpoints, or other paths that the application owner intended to keep out of public view.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Steps to Reproduce**

1. Use a browser to navigate to: {{URL}}
1. Review the contents of the `robots.txt` file and identify entries that reference internal or sensitive paths such as {{sensitive_path}}
1. Navigate to {{sensitive_path}} and confirm whether the path is accessible

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
