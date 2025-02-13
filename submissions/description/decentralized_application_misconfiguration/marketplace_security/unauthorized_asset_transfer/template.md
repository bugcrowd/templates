Unauthorized Asset Transfer occurs when assets (e.g., NFTs, tokens) are transferred without the owner’s consent. This can result from improper access control, flawed smart contract logic, or a lack of authorization checks. Attackers exploit these weaknesses to move assets without proper validation.

**Business Impact**

This type of attack leads to asset theft, eroding user trust in the platform. Financial losses can occur, and the platform may face legal action for failing to safeguard user assets. It can also hurt the platform’s reputation, resulting in reduced user engagement and a decline in marketplace activity.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Identify the targeted asset on the marketplace
1. Bypass or exploit the smart contract responsible for asset transfer to initiate an unauthorized transfer {{describe specifically how you identified it}}
1. Look at the transaction logs to confirm that the asset has been transferred without the owner’s approval
1. Verify the lack of authorization checks in the transaction path
1. Observe that the transferred asset is no longer under the original owner’s control

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
