# Description


# Reproduction Steps


# References

- http://www.thespanner.co.uk/2011/05/30/json-hijacking/


# Remediation Advice

Follow the JSON specification which requires an object as top level entity. If the top level object is an array, the response will be a valid Java Script code that might be parsed using a `<script>` tag.