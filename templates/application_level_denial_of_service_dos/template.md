## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Application_Denial_of_Service
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Denial_of_Service_Cheat_Sheet.md
- http://projects.webappsec.org/Denial-of-Service
- https://www.cvedetails.com/vulnerability-list/opdos-1/denial-of-service.html
- https://www.owasp.org/images/d/da/OWASP_IL_7_Application_DOS.pdf


## Remediation Advice

There are techniques to avoid some DoS attacks at the code level such as: Performing thorough input validations, avoiding highly CPU consuming operations, and operations which must wait for completion of large tasks to proceed, splitting operations to chunks, setting timeout timers for unreasonable time, trying to create as few bottlenecks as possible.

