Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. The application discloses a sensitive token in the URL in background requests which are not seen in the main user interface. If captured by an attacker, these sensitive tokens can be used to escalate privileges or authorize API calls within the application.

#### Business Impact

Disclosure of a sensitive token in the URL in the background could lead to data manipulation through the attacker’s ability to manipulate the application through their access to the application. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Observe the exposed token in the URL of a background request

#### Proof of Concept (PoC)

The following screenshot shows the sensitive token:

{{screenshot}}
