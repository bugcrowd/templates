# Sensitive Data Exposure

## Overview

Web servers can list the contents of directories which do not have an index page. This increases the exposure of sensitive files which are not intended to be accessed by users. A malicious attacker can quickly identify resources of a specific path or gain access to sensitive data stored in the directory.

Sensitive data was exposed on {{target}} by {{action}}.

## Walkthrough & PoC

1. Navigate to the following URL(s) to find the directory indexing is enabled:

{{value}}

1. Sensitive information was discovered by {{action}}

## Vulnerability Evidence

The image(s) below demonstrates the vulnerable information found:

{{screenshot}}

## Demonstrated Impact

Depending on the type of information found in the directory listing, exposure of this sensitive data could lead to financial loss, identity theft, and reputational damage of {{program}} and their users.

A malicious attacker can leverage this information to {{action}}.
