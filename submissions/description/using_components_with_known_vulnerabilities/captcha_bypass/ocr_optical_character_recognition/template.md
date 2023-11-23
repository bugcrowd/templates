# Optical Character Recognition

## Overview of the Vulnerability:

A Computer Automated Public Turing Test test to tell Computers and Humans Apart (CAPTCHA) allows applications to tell whether a user is a human or a robot. A common bypass is using Optical Character Recognition (OCR) where software can filter out the noise form CAPTCHA forms and easily classify the form with high accuracy.

An attacker can leverage software that uses OCR to bypass CAPTCHA forms and spam the website with queries for registration, login, and spam support teams with faulty requests.

## Business Impact:

CAPTCHA bypass can lead to reputational damage for the business due to a loss in confidence and trust by users. It can also result in indirect financial loss to the business through the extra workloads placed on internal teams to deal with spam from an attacker.

## Steps to Reproduce:

1. Navigate to the following endpoint with CAPTCHA: {{value}}
1. Use {{software}} to bypass CAPTCHA

## Proof of Concept (PoC):

The screenshot(s) below demonstrates the CAPTCHA bypass:

{{screenshot}}
