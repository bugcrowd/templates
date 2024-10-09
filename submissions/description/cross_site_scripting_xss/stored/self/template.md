Stored Cross-Site Scripting (XSS) is a type of injection attack where malicious JavaScript is injected into a website. When a user visits the affected web page, the JavaScript executes within that user’s browser in the context of this domain. Self-stored XSS can be found on this domain which allows an attacker to create crafted JavaScript payload. Additionally, the attacker needs to socially engineer the user to paste the JavaScript payload into the user’s browser. If successful, the JavaScript will execute within that user’s browser in the context of this domain.

When an attacker can control code that is executed within a user’s browser, they are able to carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions. This can result in modification, deletion, or theft of data, including accessing or deleting files, or stealing session cookies which an attacker could use to hijack a user’s session.

**Business Impact**

Self-stored XSS could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Use a browser to navigate to: {{URL}}
1. Login as a user
1. Insert the following JavaScript payload:

```JavaScript
{{payload}}
```

1. Observe the JavaScript payload being executed

**Proof of Concept (PoC)**

Below is a screenshot demonstrating the injected JavaScript executing at the vulnerable endpoint:

{{screenshot}}
