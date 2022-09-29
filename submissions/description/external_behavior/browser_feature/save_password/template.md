# Password is Saved in Input Field

## Overview of the Vulnerability

Browsers implement features such as saving input field text to reduce the time it takes for a user to fill in forms. For this application, the password is saved in the input field. An attacker with local access to the application and computer can impersonate a user and make requests on their behalf.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Enter username and password within the login form and submit
1. Logout of application and navigate back to the login page
1. Observe that the username and password is saved

## Proof of Concept (PoC)

The screenshots below demonstrate the password saved in the input field:

{{screenshot}}
