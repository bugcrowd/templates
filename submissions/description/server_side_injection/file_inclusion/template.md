Developers often include external files to incorporate images and external code libraries into applications. File inclusion vulnerabilities can occur when there are no limits placed around the type of files, or how an application allows files to be included. As a result, an attacker is able to manipulate the application to include a malicious file which is executed by the application or server. In doing so, an attacker can expose sensitive data, and in some instances gain Remote Code Execution (RCE).

#### Business Impact

File inclusion can result in data theft and manipulation, and reputational damage for the business as customers' trust is negatively impacted by an attacker’s ability to access and modify data on a server.

#### Steps to Reproduce

1. In a browser, navigate to the URL: `{{url}}viewer.php?filename=a\./../../etc/hostname`
1. You will see the hostname of the server running this request in the browser

#### Proof of Concept (PoC)

The screenshot below demonstrates the file inclusion:

{{screenshot}}
