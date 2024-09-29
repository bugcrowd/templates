Pre-existing bias occurs when historical or societal prejudices are present in the training data. This can look like a lack of certain data points, over representation or under representation of groups, a bias in the selection of data points that make up the AI model, or data labels that are discriminatory or subjective. Outputs from AI models that have a pre-existing bias can result in inferior performance and outcomes that disadvantage certain groups.

**Business Impact**

Pre-existing bias in this AI model can result in reputational damage and indirect monetary loss due to the loss of customer trust in the output of the model.

**Steps to Reproduce**

1. Input the following text into the model. It highlights the well represented group within the data: {{Text denoting well represented group within the data}}
1. Input the following text into the model. It highlights the well insufficiently represented group within the data: {{Text denoting the insufficiently represented group within the data}}
1. Note that the output of the AI model classifies these two groups disparately, showing a pre-existing bias.

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
