## Description


## Reproduction Steps


## References

- [http://projects.webappsec.org/w/page/13246922/Directory%20Indexing](http://projects.webappsec.org/w/page/13246922/Directory%20Indexing)


## Remediation Advice

Restrict directory listings being displayed from the server configuration.  

Example for Apache:

1. Edit the server configuration file or edit/create directory .htaccess
2. Add the following line:
Options -Indexes
3. If it is the last line, make sure you have a new line after it.

