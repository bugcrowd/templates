# Report Templates

![Markdown Linter](https://github.com/bugcrowd/templates/workflows/Markdown%20Linter/badge.svg)

Directory Structure notes:

Script `generate-directories.py` grabs the current latest version of the VRT structure from GitHub and creates any missing directories. Does not remove or rename directories based on items removed from VRT.

Script follows standard entry names and keeps underscores / case as provided by VRT `id` field.

---

## Working with this repo

This repo has 'Protected Master' enabled; which means that only project admins can commit to the master branch, via Pull Requests. All updates need to come via pull request to ensure integrity.

The following is written assuming SSH access is correctly configured.

First, check out the master branch:

`git clone git@github.com:bugcrowd/templates.git ## n.b. using SSH aliases can make this much simpler`

Once you have master on your system, you will need to create a branch for the work you are about to perform:

`git checkout -b <branch-name>` 

Example branch names could be `XXE-templates` `XSS-templates`, something that denotes what the parcel of work is. These should be kept small, preferrably a group of templates and not much more. Commit and push often!

`git commit -am "Comments about what you changed go here"` saves your changes in the *local* git repo. *Always* leave a descriptive commit message.

When you have completed your templates, you can push them to the repo. These will still be their own branch, but when you push the linter will run and validate the markdown against a set of rules. If you followed the example template and didn't deviate much, the templates should pass.

`git push --set-upstream origin <branch-name>` This will create the branch on the origin server (github) and push your changes. This only needs to be done once for the branch, and subsequent pushes for the branch can be performed with `git push`.

Once the linter has run successfully, you can then create a Pull Request (PR)

Select the branch in the GitHub interface. You should see a 'Pull request' button above the code.

Select that button, then fill out some details about what changed for the project admins to review, then click 'Create pull request'.

At that point, you're done! We'll review the PR and merge or reject as appropriate.

Once the PR is accepted, you're free to delete the branch

`git branch -d <branch-name>`

---

## Template Structure

Below is an example template. All sections should be updated to include correct information.

```markdown

## Overview of the Vulnerability

Provide a 1-2 sentence description of the vulnerability.

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 

## Business Impact

Provide an example of the impact to the business. This could be reputational damage, financial loss, a loss in customer trust, etc.

## Steps to Reproduce

Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.

Example:

1. Login to in-scope asset at <www.bugcrowd.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `


## Proof of Concept (PoC)

Your submission must include evidence of the vulnerability and not be theoretical in nature.
You may present your evidence as output from a tool, such as SQLMap, unless the program forbids the use of these tools. Evidence may also be in the format of terminal output, screenshots, or video.
Use this section to demonstrate clearly the effect of the vulnerability. However, do not access Personally Identifiable Information (PII).

```

## Example

This is an example template:

````markdown
# Reflected Cross-Site Scripting (Non-self)

## Overview of the Vulnerability

Reflected Cross-Site Scripting (XSS) is a type of injection attack where malicious JavaScript code is injected into a website. When a user visits the affected web page, the JavaScript code executes and its input is reflected in the user’s browser. Reflected XSS can be found on this domain which allows an attacker to create a crafted URL. When opened by a user,  this URL will execute arbitrary Javascript within that user’s browser in the context of this domain.

When an attacker can control code that is executed within a user’s browser, they are able to carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions. This can result in modification, deletion, or theft of data, including accessing or deleting files, or stealing session cookies which an attacker could use to hijack a user’s session.

## Business Impact

Reflected XSS could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Forward the following request to the endpoint:

```HTTP Request
{{request}}
```

1. Observe the JavaScript payload being executed

## Proof of Concept (PoC)

Below is a screenshot demonstrating the injected JavaScript executing at the vulnerable endpoint:

{{screenshot}}

````

## Style Guide

### Voice

Where possible, use passive voice. For example:

Correct:

> An SQL injection vulnerability was discovered in the web application.

Incorrect:

> I discovered an SQL injection vulnerability in the web application.

Incorrect:

> Bugcrowd discovered an SQL injection vulnerability in the web application.

Incorrect:

> We discovered an SQL injection in the web application.

## Concision

### Eliminate Redundancy

Incorrect:

> Throughout the course of the engagement, a critical severity SQL injection was discovered in the web application (<www.example.com>) which could be used by an attacker to exfiltrate personally identifiable information from the backend database.

Correct:

> An SQL injection was discovered in <www.example.com> allowing a malicious attacker to exfiltrate personally identifiable information.

### Split Up Long Sentences

Incorrect:

> An SQL injection was discovered in <www.example.com> allowing a malicious attacker to exfiltrate personally identifiable information including email addresses which would be considered a GDPR violation and poses a considerable business risk.

Correct:
> An SQL injection was discovered in <www.example.com> allowing a malicious attacker to exfiltrate personally identifiable information. The retrievable data includes passwords, email addresses and full names. This poses a GDPR violation and considerable business risk.

## Acronyms

When using an acronym, always spell out the full version first with the acronym in brackets. Once it has been spelled out in full, subsequent uses can just use the acronym.

For example:

> Cross-Site Scripting (XSS) is a client-side attack which allows a malicious attacker to execute JavaScript in a victim's browser. XSS occurs when user input is reflected back to the browser without encoding.

> Cross-Site Request Forgery (CSRF) was discovered in example.com. This CSRF allows you to update the victim user's address without their knowledge.

## Spelling and capitalisation of common words

Correct: Bugcrowd
Incorrect: BugCrowd, bugcrowd, Bug Crowd, Bug crowd and bug crowd.

Correct: pentest (or Pentest if grammatically required)
Incorrect: pen test, PenTest, Pen Test

## A vs. An

"An" should be used when the next word starts with a consonant *sound*. Otherwise, "A" should be used.

Correct:

- An apple
- An SQL injection
- An XSS
- An easy life
- A pineapple
- A vulnerability

Incorrect:

- An server
- A SQL injection

## Emotive language

Language used should always be unemotive and impartial.

- Correct: Seven critical vulnerabilities were discovered.
- Incorrect: Seven concerning vulnerabilities were discovered.
- Incorrect: The overall security posture was very poor.

## Researcher / Hacker / Attacker

- Use the word "researcher" when referring to a person who presents submissions to Bugcrowd.
- Use the words "attacker" when walking through an attack scenario, for example: "an attacker is able to exfiltrate customer data and perform arbitrary SQL queries".
- Never use the word "hacker".

## Use of "victim"

- Don't use the word "victim".
- A good alternative is to refer to that person's role.

Examples:

- Incorrect: The vulnerability can be used to exploit the victim.
- Correct: The vulnerability can be used to exploit the user.
- Correct: The vulnerability can be used to exploit administrative users.

## Placeholders

- `{{target}}`: Name of the in scope target listed on the program page (for example, `*.bugcrowd.com`)
- `{{application}}`: A specific application within the target (for example, Acme Inc. Employee Portal)
- `{{type}}`: Type of testing performed listed next to the target on the program page (for example website testing, API testing, mobile application testing, hardware testing, etc.)
- `{{url}}`: Placeholder for a URL (for example, `https://bugcrowd.com/vulnerability-rating-taxonomy`)
- `{{version}}`: The specific version number of software tested (for example, 13.3.7)
- `{{program}}`: The program name (for example, Bugcrowd)
- `{{screenshot}}`: Photo or video evidence displaying an execued proof of concept.
- `{{action}}`: The action that a malicious attacker could perform if they exploit it (for example, exfiltrate session tokens, take full control of administrative account, dump PII, etc.)
- `{{parameter}}`: A variable that transmits data from the client to the server which can have different types of data stored within them. The handling is determined by the server-side code. (for example `id=1337`)
- `{{hardware}}`: A specific piece of hardware used to exploit an IoT or Automotive asset 
- `{{software}}`: A specific software used to exploit an asset (for example burp, nessus, nikto, etc.)
- `{{payload}}`: A command or payload that is executed on an asset 
- `{{value}}`: A specific metric value (seconds, milliseconds, frequencies, etc.)

## BugcrowdTemplates Rubygem

This repo has `bugcrowd_templates` gem. This gem is used to fetch the `templates` for submission description and methodologies notes based on VRT selections. It is used and maintained by [Bugcrowd Engineering](https://bugcrowd.com).

## Getting Started

Add this line to your application's Gemfile:

```ruby
gem 'bugcrowd_templates'
```

## Usage

For convenience in development, we provide a utility for spinning up a
playground for playing with the gem. You can invoke it with:

```bash
bin/console
```

## File structure

Below is an example to call `BugcrowdTemplates` for fetching `templates` in submission description & methodologies notes fields.

```ruby
BugcrowdTemplates.get(
  type: 'any_value', # type can be submissions or methodologies
  field: 'any_value', # field name of the type
  category: 'any_value', # any category name from VRT option
  subcategory: 'any_value', # any subcategory name from VRT option
  item: 'any_value', # any item name from VRT option
  file_name: 'any_value' # file_name can be 'template' or 'guidance'
)
```

## Example for templates

Below is an example to call `BugcrowdTemplates` for fetching `template` in submission description field.

```ruby
BugcrowdTemplates.get(
  type: 'submissions',
  field: 'description', # field name of the submissions
  category: 'server_security_misconfiguration', # category name from VRT option
  subcategory: 'clickjacking', # subcategory name from VRT option
  item: 'non_sensitive_action', # item name from VRT option
  file_name: 'template' # template
)
=> '# Clickjacking on a non-sensitive action\n\n## Overview\n\n' # template fetched from templates path
```

Example for fetching `guidance` template

```ruby
BugcrowdTemplates.get(
  type: 'submissions',
  field: 'description',
  category: 'using_components_with_known_vulnerabilities',
  subcategory: 'outdated_software_version',
  file_name: 'guidance'
)
```

Below is an example to call `BugcrowdTemplates` for fetching `templates` in methodologies notes field.

```ruby
BugcrowdTemplates.get(
  type: 'methodology',
  field: 'notes', # field name of the methodologies
  category: 'website_testing',
  file_name: 'information'
)
=> '# Information gathering and Reconnaisance\n\n##' # template fetched from templates path
```







