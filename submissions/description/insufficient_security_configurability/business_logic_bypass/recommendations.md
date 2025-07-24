**Recommendation**

Remediate the identified flaws within the applications design and implementation, to ensure that the intended application logic cannot be bypassed or manipulated to elicit unintended behaviours.

Furthermore, the following key points should be taken into consideration: 

* Ensure developers and Quality Assurance testers understand the application and its intended functionality.
* Avoid making implicit assumptions about user behaviour or other parts of the application.
* Maintain clear design documents and data flows for all transactions and workflows, noting any assumptions that are made at each stage.
* Write code as clearly as possible. If it's difficult to understand what is supposed to happen, it will be difficult to spot any logic flaws. Ensure that developers and testers know what assumptions are being made and exactly what the expected behaviour is.
* Note any references to other code that uses each component. Consider any side-effects of these dependencies if a malicious party were to manipulate them in an unintended manner.