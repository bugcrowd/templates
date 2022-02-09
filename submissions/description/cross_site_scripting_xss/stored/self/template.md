# Self-Stored Cross-Site Scripting

## Overview

Stored Cross-Site Scripting (XSS) is an injection vulnerability which targets the users of a website. XSS occurs when an attacker embeds malicious HTML or Javascript directly into a HTTP request, or a user input field within a web application. Once executed, this untrusted data is stored server-side, typically within a database, a message forum, or comment field. As stored XSS is persistent, this vulnerability can affect multiple users when they browse to the affected page without further actions required of the attacker.

Self-stored XSS in {{application}} of {{target}} allows an attacker to {{action}} by adding or modifying JavaScript permanently to their own account.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Insert {{payload}} in the appropriate area
1. Observe the JavaScript payload was executed

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities can be escalated by a malicious attacker who can then attempt to bypass Cross-Site Request Forgery (CSRF) protections, or perform account takeovers, giving them the ability to perform any action that a logged in user can perform.

A malicious attacker could abuse this XSS vulnerability further to {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
