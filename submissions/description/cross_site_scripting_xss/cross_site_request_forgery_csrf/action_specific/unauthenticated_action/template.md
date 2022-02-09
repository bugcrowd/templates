# Cross-Site Request Forgery For Unauthenticated Action

## Overview

Cross Site Request Forgery (CSRF) occurs when requests are submitted on behalf of the user via hidden forms, images, and JavaScript.

A malicious attacker can leverage CSRF to ride a user's session and make requests to a trusted application the targeted user is interfacing with.

## Walkthrough & PoC

1. Navigate to Bugcrowd.com/vulnerable-endpoint

1. {{action}} and intercept with a Web Proxy

1. Use {{software}} to generate a CSRF proof of concept and re-send the request

1. Notice that the {{action}} occurred on the target account, specifying that the CSRF attack was successful:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

A malicious attacker can perform actions on behalf of a user, potentially being able to copy, edit, or delete data, or otherwise perform actions within the application that the user's privileges allow.

In this application, the form {{value}} lacks CSRF protection potentially allowing an attacker to perform {{action}} on behalf of a user, simply by having them visit a malicious website.
