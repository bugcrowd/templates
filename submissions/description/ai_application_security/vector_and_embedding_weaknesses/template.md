Vector and embedding weaknesses occur when an attacker is able to steal or recreate the internal vector representations used by an AI model. By analyzing these embeddings, attackers can gain insights into the model's knowledge, data relationships, or even reconstruct parts of the model itself.

**Business Impact**

Loss of intellectual property and competitive advantage if sensitive model information is extracted. Extracted embeddings may be used to replicate model functionality or gain unauthorized insights into training data.

**Steps to Reproduce**

1. Identify that the following methods or APIs expose vector embeddings or similar representations:
1. Use the following techniques to extract or infer these embeddings from model interactions:

```python
  {script}
```
3. Analyze the extracted embeddings for patterns and observer information about the model's knowledge

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
