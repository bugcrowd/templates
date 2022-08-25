# Path Traversal

## Overview of the Vulnerability

Path traversal uses a server misconfiguration to access hidden files and directories that are stored on the served web application. This can include sensitive operating files, code and data that runs the application, or in some cases, user credentials.

An attacker can leverage the path traversal vulnerability in this application to gain access to system files in a folder of a directory that is not intended for public access.

## Business Impact

Path traversal can lead to reputational damage for the business due to a loss in confidence and trust by users. It can also result in data theft and indirect financial losses to the business through the costs of notification and rectifying and breached PII data if an attacker can successfully exfiltrate user data.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Browse to the URL {{value}}
1. Change {{parameter}} to {{value}}
1. It’s now possible to view a new directory that is not intended to be viewed

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the path traversal:

{{screenshot}}
