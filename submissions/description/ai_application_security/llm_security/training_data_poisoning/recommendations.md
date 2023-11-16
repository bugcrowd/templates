# Recommendation(s)

There is no single technique to prevent excessive agency or permission manipulation from occurring. However, implementing the following defensive measures within the LLM application can prevent and limit the impact of the vulnerability:

- Verify the training data supply chain, its content, as well as its sources.
- Ensure the legitimacy of the data throughout all stages of training.
- Strictly vet the data inputs and include filtering and sanitization.
- Use testing and detection mechanisms to monitor the model's outputs and detect any data poisoning attempts.

For more information, refer to the following resources:

- <https://owasp.org/www-project-top-10-for-large-language-model-applications/>
- <https://stanford-cs324.github.io/winter2022/lectures/data/>
