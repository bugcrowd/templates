## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Transport_Layer_Protection_Cheat_Sheet#Rule_-_Do_Not_Mix_TLS_and_Non-TLS_Content
- https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content


## Remediation Advice

To protect all elements of a page from sniffers and man-in-the-middle attacks, ensure that all content such as scripts, images, iframes, etc, are sourced over HTTPS rather than HTTP.
