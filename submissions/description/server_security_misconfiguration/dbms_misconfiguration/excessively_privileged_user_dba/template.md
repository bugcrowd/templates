# Excessively Privileged User In Database

## Overview of the Vulnerability

Database Management System (DBMS) misconfiguration can arise from software or hardware misconfigurations, vulnerabilities, or human error. DBMS misconfigurations can result in an attacker performing Denial of Service (DoS) attacks, injection attacks, buffer overflows, malware, and attacks performed on backup databases.

The database contains a user with excessive privileges. If their account were to be compromised, an attacker could gain access to the database and get read and write access to its contents.

## Business Impact

DBMS misconfigurations can lead to reputational damage for the business due to a loss in confidence and trust by users. It can also lead to indirect financial loss due to intellectual property theft, industry regulated fines, and breach investigation activities and customer notification as a result of an attacker gaining and exploiting access to the DBMS. The severity of the business impact depends on the privilege level of access gained by an attacker.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to the vulnerable functionality: {{value}}
1. Use Web Proxy to intercept the request
1. Navigate to the vulnerable functionality {{value}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe that the user with roles {{value}} has excessive privileges to {{action}} in database {{value}}.

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the misconfiguration:

{{screenshot}}
