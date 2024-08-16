Sensitive data can be exposed by web servers which list the contents of directories that do not have an index page, which increases the exposure of files that are not intended to be accessed. Within this application, sensitive data has been exposed through a directory listing being enabled. This allows an attacker to quickly identify resources of a specific path, or gain access to data stored in the directory by browsing to the directory listing.

#### Business Impact

Data exposure could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in the directory listing.

#### Steps to Reproduce

1. Using a browser, navigate to the following URL to find that directory listing is enabled:

{{URL}}

#### Proof of Concept (PoC)

The screenshot below demonstrates the sensitive data found:

{{screenshot}}
