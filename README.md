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

## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.inscope.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an SQL Injection vulnerability, please include specific NON-PII information discovered in the database, such as Database Version, a listing of database tables, or an injected 'sleep' payload.

You may present your evidence as output from a tool such as SQLMap, unless the program forbids the use of these tools, and it may be in the format of terminal output, screenshots, or video.

**DO NOT ACCESS PII**
-->

## Demonstrated Impact
<!--
Demonstrating access to data other than the database version or database tables is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII**

A malicious attacker could ...
--> 

```

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

> Throughout the course of the engagement, a critical severity SQL injection was discovered in the web application (www.example.com) which could be used by an attacker to exfiltrate personally identifiable information from the backend database.

Correct:

> An SQL injection was discovered in www.example.com allowing a malicious attacker to exfiltrate personally identifiable information.

### Split Up Long Sentences

Incorrect:

> An SQL injection was discovered in www.example.com allowing a malicious attacker to exfiltrate personally identifiable information including email addresses which would be considered a GDPR violation and poses a considerable business risk.

Correct:
> An SQL injection was discovered in www.example.com allowing a malicious attacker to exfiltrate personally identifiable information. The retrievable data includes passwords, email addresses and full names. This poses a GDPR violation and considerable business risk.

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

"An" should be used when the next word starts with a consonant _sound_. Otherwise, "A" should be used.

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
- Use the words "malicious attacker" when walking through an attack scenario, for example: "a malicious attacker is able to exfiltrate customer data and perform arbitrary SQL queries".
- Never use the word "hacker".

## Placeholders

- `{{target}}`: Name of the in scope target listed on the program page (for example, `*.bugcrowd.com`)
- `{{application}}`: A specific application within the asset (for example, Acme Inc. Employee Portal)
- `{{type}}`: Type of testing performed listed next to the target on the program page (for example website testing, API testing, mobile application testing, hardware testing, etc.)
- `{{url}}`: Placeholder for a URL (for example, `https://bugcrowd.com/vulnerability-rating-taxonomy`)
- `{{version}}`: The specific version number of software tested (for example, 13.3.7)
- `{{program}}`: The program name (for example, Bugcrowd)
- `{{screenshot}}`: Photo or video evidence displaying an execued proof of concept.
- `{{action}}`: The action that a malicious attacker could perform if they exploit it (for example, exfiltrate session tokens, take full control of administrative account, dump PII, etc.)
- `{{parameter}}`: A variable that transmits data from the client to the server which can have different types of data stored within them. The handling is determined by the server-side code.
(for example `id=1337`)