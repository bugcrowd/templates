Local storage, also known as offline, web, or session storage, is the underlying storage mechanism which varies from one user agent to the next. This application discloses a non-sensitive token in the `localStorage`/`sessionStorage` which is accessible by JavaScript. As a result, the token can be captured by an attacker using Cross-Site Scripting (XSS) or Cross-Site Request Forgery (CSRF), allowing them to gather relevant user data and leverage this information to build phishing campaigns.

**Business Impact**

This vulnerability can lead to data theft through the attacker’s ability to access and manipulate sensitive data through their access to the application's local session. These malicious actions can result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Use a browser to navigate to: {{URL}}
1. Right click on the page, select Inspect, then select Storage, then Local (or Session) Storage
1. Observe the exposed sensitive token: {{screenshot}}
1. In a new private browser window, perform {{action}} to show that the token in `localStorage`/`sessionStorage` can be used to access a user's session or data: {{replace these brackets with a screenshot}}

**Proof of Concept (PoC)**

The following screenshot shows the non-sensitive token exposed via the `localStorage`/`sessionStorage`:

{{screenshot}}
