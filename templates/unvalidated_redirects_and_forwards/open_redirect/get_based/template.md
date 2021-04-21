# Overview
<!--
**Please replace text in each section below**

GET Based Open Redirect Report

Resources:
- <https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/11-Client_Side_Testing/04-Testing_for_Client_Side_URL_Redirect>
- <https://cwe.mitre.org/data/definitions/601.html>

-->
Open redirects enable a malicious attacker to manipulate a user and redirect them to a malicious site. A malicious attacker can send a phishing email that contains a link with the business's name and the user will be redirected from the legitimate web server to any arbitrary external domain. The ability to use an authentic application URL, targeting the correct domain and with a valid SSL certificate (if SSL is used), lends credibility to the phishing attack because many users, even if they verify these features, will not notice the subsequent redirection to a different domain.

An open redirect was found at {{url}} through {{parameter}} enabling {{action}} to take place.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to execute a successful redirect via the vulnerable Http parameter.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

Example:

1. Browse to `{{url}}`
2. At the top of the site click on 'Compensation' and select 'Employers' from the drop down menu.
3. Tick any 3 boxes and click the 'Boom' button. You should see a request similar to:
`{{url}}/query.php?{{parameter}}=http%3A%2F%2F%3CexampleSite%3E.com%2F91383`
4. Copy this and modify the URI so the URL is:
`{{url}}/query.php?{{parameter}}={{payload}}`
5. Submit this in a new browser window and you should be redirected to the Bugcrowd website.

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a GET open redirect vulnerability, please provide instructions on how to navigate the target to the vulnerable request and execute the redirect. Evidence can be screenshots or the raw method-path-protocol from an Http request and the subsequent 200 response.

Posting the entire Http request and response is not required.
-->
The screenshot below demonstrates the GET based open redirect executing at {{url}} through the {{parameter}} parameter.

{{screenshot}}

## Demonstrated Impact
<!--
Do NOT redirect to an unapproved third party website. Successfully redirecting to https://bugcrowd.com/ is sufficient.
-->
A malicious attacker could abuse this open redirect further by redirecting to a custom phishing website. 
