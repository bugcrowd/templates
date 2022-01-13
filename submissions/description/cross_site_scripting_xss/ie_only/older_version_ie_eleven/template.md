# Cross Site Scripting Older Version of IE (< 11)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

An attacker can leverage XSS within the application to {{action}}.

## Walkthrough & PoC

1. Navigate to Bugcrowd.com/vulnerable-endpoint on IE version < 11

1. {{action}} and intercept with a Web Proxy:

{{screenshot}}

1. Change {{parameter}} to {{value}} and resend request

1. Notice the XSS is executed:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact

An attacker can leverage XSS to run code within a browser to steal data and hijack active user sessions.
