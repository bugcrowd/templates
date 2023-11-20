# Guidance

Where possible and safe, escalate the SSRF to have some kind of tangible security impact, such as exfiltrating data. If no impact can be demonstrated other than receiving external interactions, this will most likely be considered as P5/informational severity.

As this VRT item refers to high-impact internal requests, be sure to demonstrate exactly what can be accessed internally, for example a cloud provider meta-data endpoint, or some kind of internal dashboard. If this SSRF is not able to perform high-impact internal requests, take a look at some of the other SSRF VRT items to see if there is another one that is more appropriate.
