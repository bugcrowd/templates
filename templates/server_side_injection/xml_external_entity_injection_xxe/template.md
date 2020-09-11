## Description


## Reproduction Steps


## References

- [https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing](https://www.owasp.org/index.php/XML_External_Entity_(XXE)_Processing)
- [https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.md](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.md)
- [http://projects.webappsec.org/XML-External-Entities](http://projects.webappsec.org/XML-External-Entities)
- [https://www.gracefulsecurity.com/xml-external-entity-injection-xxe-vulnerabilities/](https://www.gracefulsecurity.com/xml-external-entity-injection-xxe-vulnerabilities/)


## Remediation Advice

Because user supplied XML input comes from an "untrusted source" it is very difficult to properly validate the XML document in a manner to prevent against this type of attack. 

Instead, the XML processor should be configured to use only locally defined `Document Type Definition (DTD)` and disallow any inline DTD that is specified within user supplied XML documents. 

Due to the fact that there are numerous XML parsing engines available for different programming languages, each has its own mechanism for disabling inline DTD to prevent XXE. You may need to search your XML parser's documentation for how to `disable inline DTD` specifically.

