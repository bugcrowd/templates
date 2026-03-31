System Center Configuration Manager (SCCM) distribution point anonymous access is a misconfiguration where the SCCM distribution point allows unauthenticated HTTP access to software packages, operating system images, and scripts hosted for client deployment. An attacker with network access to the distribution point can browse and download all hosted content without authentication. This content may include application installers, scripts containing hardcoded credentials, configuration files with internal infrastructure details, and operating system deployment packages. This access allows an attacker to harvest sensitive data, recover credentials, and map internal infrastructure for further attacks.

**Business Risk**

Distribution point anonymous access can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Identify the SCCM infrastructure components including the site server, management point, and distribution points at {{sccm_infrastructure_targets}}
1. Send an unauthenticated HTTP request to `{{distribution_point_url}}/SMS_DP_SMSPKG$/` to list available packages
1. Browse the directory listing at {{package_directory_url}} to identify available content
1. Download {{package_or_file}} from the distribution point without providing credentials
1. Examine the downloaded content for credentials, scripts, or sensitive configuration data at {{file_path}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
