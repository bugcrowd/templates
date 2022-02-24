# Authentication Bypass

## Overview

Authentication Bypass allows a malicious attacker to gain access to an application with equivalent privileges as an authenticated user without having to go through the application's authentication procedure.

A malicious attacker can perform a variety of actions through bypassing authentication methods, and is only limited by the permissions of the privileged user. This could include viewing or editing sensitive customer data, viewing or editing other user permissions, taking over user accounts, hijacking sessions, accessing unauthorized endpoints, or exposing critical data.

Bypassing the authentication methods in {{application}} allows a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Login to Bugcrowd.com

1. {{action}} to initiate the vulnerable request

1. Intercept the request in a Web Proxy

1. Change {{parameter}} to {{value}}

1. Notice that the application does {{action}}

## Vulnerability Evidence

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact

Authentication bypass can result in modification or theft of data, including Personally Identifiable Information (PII). This can lead to financial loss, users' identity theft, and reputational damage of {{program}} and their users.

A malicious attacker can {{action}} to bypass authentication or break session management to access {{value}}.
