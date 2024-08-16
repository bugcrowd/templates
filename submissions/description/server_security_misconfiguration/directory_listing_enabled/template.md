Web servers can list the contents of directories which do not have an index page. This increases the exposure of data which are not intended to be accessed. An attacker can quickly identify resources of a specific path or gain access to sensitive data stored in the directory.

Vulnerability Specifics to the Application:

Sensitive data was exposed on {{target}} by {{action}}.

#### Business Impact

Depending on the type of data found in the directory listing, exposure of this information could lead to financial loss and reputational damage to the company and their users.

#### Steps to Reproduce

1. Using {{browser-used}}, navigate to the following URL(s) to find the following directory indexing is enabled:

{{value}}


#### Proof of Concept (PoC)

The image(s) below demonstrates the information found:

{{screenshot}
