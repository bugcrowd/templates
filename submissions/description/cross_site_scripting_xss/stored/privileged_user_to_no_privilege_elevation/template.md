Stored Cross-Site Scripting (XSS) is a type of injection attack where malicious JavaScript is injected into a website. When a user visits the affected web page, the JavaScript executes within that user’s browser in the context of this domain. Stored XSS can be found on this domain which allows an attacker to submit data to a form and gain access to an account of a user with the same privilege level.

When an attacker can control code that is executed within a user’s browser, they are able to carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions. This can result in modification, deletion, or theft of data, including accessing or deleting files, or stealing session cookies which an attacker could use to hijack a user’s session.
  
#### Business Impact

Stored XSS could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Log into the application at with an account (User A)
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe the JavaScript payload being executed
1. Log out of the account for User A
1. Log into another account (User B) and navigate to {{url}} which contains the payload
1. Log out of User B and log into the account of User A
1. Observe the account for User A has access to account information of User B

#### Proof of Concept (PoC)

Below is a screenshot demonstrating the injected JavaScript executing at the vulnerable endpoint, {{URL}}:

{{screenshot}}
