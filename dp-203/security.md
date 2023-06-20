##   5°.security.2006.2246


please provide explanation , i am learning security on dp203, and everything is very confusing, so be explicit, and use simple terms. 

explain why choosen answers are correct and why other choice are wrong, 

#### 0017::
`You have an Azure Data Lake Storage Gen2 account named adls2 that is protected by a virtual network.
`You are designing a SQL pool in Azure Synapse that will use adls2 as a source.
`What should you use to authenticate to adls2?
`::
`Managed Identity: Correct. Managed identities in Azure allow resources to have an identity in Azure AD. In the context of an Azure Synapse SQL pool that will use an Azure Data Lake Storage Gen2 as a source, the managed identity of the Azure Synapse can be granted permissions on the Data Lake. This way, it can authenticate directly using Azure AD, without needing to store credentials in the Synapse. It provides a secure and seamless authentication experience.
`
`Shared Key: Incorrect. Shared Keys are a method of authentication, but they are not as secure as using Azure AD. Shared keys give full permissions to the data, which violates the principle of least privilege. It's also more difficult to manage shared keys in a secure way, as you'd have to store the keys somewhere and rotate them periodically.
`
`Shared Access Signature (SAS): Incorrect. A Shared Access Signature is another way of delegating access to resources in Azure. However, SAS tokens have a finite lifespan and have to be regenerated once they expire, which adds unnecessary complexity. Additionally, Azure Synapse does not support using SAS tokens for Azure Data Lake Storage Gen2.

- [ ] an Azure Active Directory (Azure AD) user
- [ ] a shared key
- [ ] a shared access signature (SAS)
- [x] a managed identity

#### 0015::
`You are designing a security model for an Azure Synapse Analytics dedicated SQL pool that will support multiple companies.
`You need to ensure that users from each company can view only the data of their respective company.
`Which two objects should you include in the solution? 
`::
`Security Policy: Correct. A security policy is a definition of what is permitted and what is not. You can create a security policy that states that users can only access their own company's data. This will provide an overarching framework for your security approach.
`
`Custom Role-Based Access Control (RBAC) Role: Correct. RBAC is a policy-neutral access-control mechanism defined around roles and privileges. In Azure, you can create custom roles to grant specific data permissions. In this case, you could create a role for each company and assign the users of that company to the corresponding role. This role would grant access to the data of the respective company, ensuring that users can only view their own data.
`
`Predicate Function: Incorrect. A predicate function is part of Row-Level Security (RLS), which allows you to control access to rows in a database based on the characteristics of the user. While this could theoretically be used to restrict access to certain rows of data, it's a bit more complex and is typically used in more specific scenarios. RBAC is a more straightforward and manageable way to handle this scenario.
`
`Column Encryption Key: Incorrect. Column Encryption Key (CEK) is used to encrypt data in a column using Always Encrypted feature. Although it adds an extra layer of security by encrypting sensitive data in the database, it doesn't control access to data based on the user's company. Therefore, it doesn't meet the requirement in the question.
`
`Asymmetric Keys: Incorrect. Asymmetric keys are used in encryption and decryption process but do not control access to specific data. Asymmetric keys would ensure that the data is securely transmitted and stored, but it wouldn't help restrict users to only their respective company's data.

- [x] a security policy
- [x] a custom role-based access control (RBAC) role
- [ ] a predicate function
- [ ] a column encryption key
- [ ] asymmetric keys
