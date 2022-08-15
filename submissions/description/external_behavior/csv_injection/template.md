# Comma Separated Values (CSV) Injection

## Overview of the Vulnerability

Applications will often embed unsafe input in exported spreadsheets targeting desktop applications such as Excel or LibreOffice, or their cloud application equivalents. A malicious attacker can leverage this unsafe input to exfiltrate data from users, or deliver malicious binary to users downloading their input controlled file. Unsafe CSV formulas in CSV files within the application allow malicious attackers to deliver payloads or exfiltrate data using specifically crafted input.

## Business Impact

CSV injection can lead to reputational damage for the business due to a loss in confidence and trust by users. It can also result in indirect financial loss to the business if an attacker is able to exfiltrate data.

## Steps to Reproduce

1. Navigate to the following endpoint: {{value}}
1. {{action}} to export a CSV file
1. Observe that the CSV file is using unsafe input:

{{screenshot}}

1. Craft a malicious CSV file to exfiltrate data by using the following payload:

{{payload}}

1. Upload to publicly accessible endpoint

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the CSV injection:

{{screenshot}}
