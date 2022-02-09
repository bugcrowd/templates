# URL Stored Based Cross-Site Scripting

## Overview

Stored Cross-Site Scripting (XSS) is an injection vulnerability which targets the users of a website. Stored, URL based XSS occurs when an attacker embeds malicious HTML or Javascript directly into a URL of a web application. The malicious script then executes within the user's browser with the user's permission levels in the application. This allows the attacker to perform any action and retrieve any data that the user has permissions for. As stored XSS is persistent, this vulnerability can affect multiple users without further actions required of the attacker.

An attacker can leverage this URL based stored XSS within the application to {{action}}.

## Walkthrough & PoC

1. Navigate to the following URL: bugcrowd.com/vulnerable-endpoint

1. Intercept the request in a Web Proxy, notice the parameter in the URL:

{{parameter}}

1. Forward the request to see the arbitrary javascript execute

## Vulnerability Evidence

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities can be escalated by a malicious attacker who can then attempt to bypass Cross-Site Request Forgery (CSRF) protections, or perform account takeovers, giving them the ability to perform any action that a logged in user can perform.

A malicious attacker could abuse this XSS vulnerability further to {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
