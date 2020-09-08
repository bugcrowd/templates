# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Path_Traversal
- https://www.owasp.org/index.php/File_System#Path_traversal
- http://projects.webappsec.org/w/page/13246952/Path%20Traversal


# Remediation Advice

1. Prefer working without user input when using file system calls
2. Use indexes rather than actual portions of file names when templating or using language files (i.e. value 5 from the user submission = Czechoslovakian, rather than expecting the user to return “Czechoslovakian”)
3. Ensure the user cannot supply all parts of the path – surround it with your path code
4. Validate the user’s input by only accepting known good – do not sanitize the data
5. Use `chroot`ed jails and code access policies to restrict where the files can be obtained or saved to
6. If forced to use user input for file operations, normalize the input before using in file I/O APIs, such as the [Java SE URI normalize() method](http://docs.oracle.com/javase/7/docs/api/java/net/URI.html#normalize).