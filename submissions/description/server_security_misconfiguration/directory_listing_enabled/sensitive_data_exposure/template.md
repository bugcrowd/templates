# Sensitive Data Exposure via Directory Listing Enabled

## Overview of the Vulnerability

Sensitive data can be exposed by web servers which list the contents of directories that do not have an index page. This increases the exposure of sensitive files which are not intended to be accessed by users. An attacker can quickly identify resources of a specific path or gain access to sensitive data stored in the directory.

Vulnerability Specifics to the Application:

Sensitive data was exposed on {{target}} by {{action}}.

## Business Impact

Depending on the type of data found in the directory listing, exposure of this sensitive information could lead to financial loss and reputational damage of {{customer-name}} and their users.

## Steps to Reproduce

1. Using {{browser-used}}, navigate to the following URL(s) to find the following directory indexing is enabled:

{{value}}

1. Sensitive data was discovered by performing {{action}}
1. The following sensitive data was discovered:

{{sensitive-data-type(s)}}

## Proof of Concept (PoC)

An attacker can leverage this sensitive data to {{action}}. The image(s) below demonstrates the information found:

{{screenshot}
