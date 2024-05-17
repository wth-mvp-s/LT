##   5°_1from4



#### 0000.12 [100%] ::You are developing a medical records document management website. The website is used to store scanned copies of patient intake forms.
`If the stored intake forms are downloaded from storage by a third party, the contents of the forms must not be compromised.
`You need to store the intake forms according to the requirements.
`Solution: Store the intake forms as Azure Key Vault secrets.
`Does the solution meet the goal?

- [ ] Yes
- [x] No

#### 0000.13 [] ::
`You plan to deploy a new application to a Linux virtual machine (VM) that is hosted in Azure.
`The entire VM must be secured at rest by using industry-standard encryption technology to address organizational security and compliance requirements.
`You need to configure Azure Disk Encryption for the VM.
`How should you complete the Azure CLI commands?

- [x]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault key create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm encryption enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type all

- [ ]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault key create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm encryption enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type data

- [ ]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault key create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm encryption enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type os

- [ ]
`az provider register -n Microsoft.KeyVault
`resourcegroup="myResourceGroup"
`az group create --name $resourcegroup --location westus
`keyvault_name=myvaultname$RANDOM
`az keyvault key create / 
`    --name $keyvault_name \
`    --resource-group $resourcegroup \
`    --location eastus \
`    --enable-for-disk-encryption True
`az keyvault create \
`    --vault-name $keyvault_name \
`    --name Name1 \
`    --protection software
`az vm encryption create \
`    --resource-group $resourcegroup \
`    --name Name2
`    --image Canonical:UbuntuServer:16.04-LTS:latest \
`    --admin-Username azureuser \
`    --generate-ssh-keys \
`    --data-disk-sizes-gb 5
`az vm enable\
`    --resource-group $resourcegroup \
`    --name Name2 \
`    --disk-encryption-keyvault $keyvault_name \
`    --key-encryption-key Name1 \
`    --volume-type all

#### 0000.14 [100%]::Your company is developing an Azure API hosted in Azure.
`You need to implement authentication for the Azure API to access other Azure resources. You have the following requirements:
`✑ All API calls must be authenticated.
`
`✑ Callers to the API must not send credentials to the API.
`Which authentication mechanism should you use?

- [ ] Basic
- [ ] Anonymous
- [x] Managed identity
- [ ] Client certificate

#### 0000.15 ::
`You are developing an application. You have an Azure user account that has access to two subscriptions.
`You need to retrieve a storage account key secret from Azure Key Vault.
`In which order should you arrange the PowerShell commands to develop the solution?

- [x] 
`Get-AzSubscription
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzKeyVaultSecret -VaultName
`$valueName

- [ ] 
`Get-AzSubscription
`
`Get-AzKeyVaultSecret -VaultName
`$valueName
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue



- [ ] 
`Get-AzSubscription
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzKeyVaultSecret -VaultName
`$valueName

- [ ] 
`Get-AzKeyVaultSecret -VaultName
`$valueName
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzSubscription
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct

- [ ] 
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzSubscription
`
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzKeyVaultSecret -VaultName
`$valueName



- [ ] 
`$SecretValue = ConvertTo-SecureString
`$storeAcctkey -AsPlainText
`-Froce
`    Set-AzKeyVaultSecret -VaultName
`$vaultName -Name $secretName
`-SecretValue $secretvalue
`
`Get-AzStorageAccountKey -
`ResourceGroupName $resGroup -Name
`$storeAcct
`
`Set-AzContext -SubscriptionId
`$subscriptionID
`
`Get-AzKeyVaultSecret -VaultName
`$valueName
`
`Get-AzSubscription





