# Screen Caching Enabled

## Overview of the Vulnerability:

Screen caching occurs when an application is sent to the background and a screenshot is taken in order to make it appear that the application is shrinking while moving between applications on the mobile screen. Personal information can be unknowingly captured in this screen cache and stored unencrypted on the phone. An attacker could abuse this screen caching being enabled to steal sensitive information that is captured and stored unencrypted when a user exits the application.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce:

1. Log in to the mobile application and access a screen where sensitive information is displayed
1. Click the home button, and navigate to where the mobile operating system stores cached application screenshots
1. Observe the screenshot taken that captures sensitive information when the home button was clicked

## Proof of Concept (PoC):

The screenshots below demonstrate the screen caching displaying sensitive information:

{{screenshot}}
