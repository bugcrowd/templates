# Exposed Admin Portal

## Overview of the Vulnerability

Administrative portals for an application allow Admins to login and modify how the application runs and the content it serves. This can include adding, removing, updating, or creating new content, account provisioning, data manipulation, and other configuration changes.

An attacker who is able to identify an exposed admin portal can then brute force credentials. If they successfully login, they can access the administrative interface and carry out activities with Admin privileges.

## Business Impact

Exposed admin portals can lead to indirect financial loss due to the attacker’s ability to modify, remove or create data within the admin portal. It can also cause reputational damage for the business due to a loss in confidence and trust by users.

## Steps to Reproduce

1. Use a browser to navigate to the admin portal via the URL: {{URL}}
1. The following are the functionalities of the admin portal:

{{value}}

1. Execute {{action}} on the admin portal

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the exposed admin portal:

{{screenshot}}
