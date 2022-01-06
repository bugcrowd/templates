# race condition

## overview
<!--
**please replace text in each section below**

path traversal vulnerability report

resources:

- <https://owasp.org/www-community/attacks/path_traversal>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-web_application_security_testing/05-authorization_testing/01-testing_directory_traversal_file_include>
-->
a race condition is a queued task executed by an application that executes a function in parallel which are then abused to gain something.

a malicious attacker can use race conditions to call a function multiple times to break application logic.

## walkthrough & poc
<!--
provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

example:

1. browse to the url <https://data1.inscope.com/datastore1/dataviewer?data=regulardata/>
1. now change the url from `data=regulardata` to `data=%2e%2e%2fsecuredata%2f` which is url encoded from `../securedata/`
1. you will now see we can view to a new directory that was not intended to be viewed using path traversal 

-->

1. browse to the following endpoint: {{value}}

1. fill in the form and send the request

1. intercept the following request in a web proxy:

{{screenshot}}

1. use {{program}} to exploit the race condition


## vulnerability evidence
<!--
your submission must include evidence of the vulnerability and not be theoretical in nature.

attaching a screenshot of the webpage with the url bar in view will be sufficient for this report.
-->

the following image(s) shows the full exploit:

{{screenshot}}

## demonstrated impact
<!--
this path traversal vulnerability allows an attack to gain acces to a folder called `securedata` in a directory it was not intended to access.
-->

an malicious attacker can use this race condition to {{value}}
