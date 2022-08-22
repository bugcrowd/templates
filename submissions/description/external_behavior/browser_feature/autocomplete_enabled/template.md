# Autocomplete Enabled

## Overview of the Vulnerability

Browsers implement features such as autocomplete to offer form filling features for end users. Autocomplete is an HTML attribute that saves previously entered text within the input Document Object Model (DOM) fields. An attacker can leverage the cached input for this application locally to login as a user or expose critical pieces of data.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Enter text within the input field and submit the form
1. Use `Inspect` from the developer tools to verify the input parameter has `autocomplete=on`
1. {{action}} to see the text saved into the input field

## Proof of Concept (PoC)

The screenshots below demonstrate the autocomplete enabled:

{{screenshot}}
