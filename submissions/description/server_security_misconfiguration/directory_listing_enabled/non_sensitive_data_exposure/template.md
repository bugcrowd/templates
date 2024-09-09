Web servers can list the contents of directories that do not have an index page, which increases the exposure of data that is not intended to be accessed. There is a directory listing enabled for this application that exposes non-sensitive data. An attacker can quickly identify resources of specific paths and gain access to data stored in the directory that could be used to build further attacks on the application.

## Business Impact

Depending on the type of data found in the directory listing, exposure of this information could lead to indirect financial loss and reputational damage.

## Steps to Reproduce

1. Using {{browser-used}}, navigate to the following URL(s) to find the following directory indexing is enabled:

{{value}}

1. The non-sensitive information was discovered by performing {{action}}
1. The following sensitive data was discovered:

{{sensitive-data-type(s)}}

## Proof of Concept (PoC)

An attacker can leverage this non-sensitive data to {{action}}. The image(s) below demonstrates the information found:

{{screenshot}}
