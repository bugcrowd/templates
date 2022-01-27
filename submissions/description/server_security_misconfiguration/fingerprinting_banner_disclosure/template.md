# Fingerprinting Banner Disclosure

## Overview
Fingerprinting is where a malicious attacker identifies the services running on a host. This information helps an attacker to formulate a list of applicable exploits on a target system. 

The information for {{target}} and/or {{application}} disclosed allows for a malicious attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to endpoint: {{value}}

1. Send a request to the endpoint

1. Observe the response, noting the information disclosed about the server:

{{value}}

## Vulnerability Evidence

The image(s) below demonstrates the banner disclosure: 

{{screenshot}}

## Demonstrated Impact

A malicious attacker who knows the type and version of web server being run is able to determine if the application is vulnerable to attack. Older versions of servers are particularly susceptible to known, version-specific attacks if they do not have up-to-date security patches.

A malicious attacker who gathers information for {{target}} can then {{action}}. 

