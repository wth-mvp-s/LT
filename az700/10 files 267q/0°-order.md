6 null
7 null
8
5

#### 001::
`Question #3Topic 5
`DRAG DROP -
`You have an Azure virtual network named Vnet1 that connects to an on-premises network.
`You have an Azure Storage account named storageaccount1 that contains blob storage.
`You need to configure a private endpoint for the blob storage. The solution must meet the following requirements:
`✑ Ensure that all on-premises users can access storageaccount1 through the private endpoint.
`✑ Prevent access to storageaccount1 from being interrupted.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:



- [0] Configure a private endpoint on storageaccount1 and disable public access to the account 
- [1] Deploy a virtual machine to a subnet in Vnet1
- [2] Install the DNS server role and configure the forwarding of blob.core.windows.net to 168.63.129.16
- [3] Configure on-premises DNS servers to forward blob.core.windows.net to the virtual machine
- [ ] Configure on-premises DNS server to forward blob.core.windows.net to 168.63.129.16




#### 002::
`You have two Azure subscriptions named Subscription1 and Subscription2. Subscription1 contains a virtual network named Vnet1. Vnet1 contains an application server. Subscription2 contains a virtual network named Vnet2.
`You need to provide the virtual machines in Vnet2 with access to the application server in Vnet1 by using a private endpoint.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:


- [0] Deploy an Azure Standard Load Balancer in front of the application server.
- [1] In Subscription 1, create a private link service and attach the service to the frontend IP configuration of the load balancer.
- [2] In Subscription 2, create a private endpoint by using the private link service.
- [3] In Subscription 1, accept the private endpoint connection request.
- [ ] Enable virtual network peering between Vnet1 and Vnet2.


#### 003::
`You have an Azure subscription that contains the resources shown in the following table.


|Name--------|Type----------------------------|Description------------|
|App1--------|Azure App Service app-----------|Accessed by using a URL of https://app1.contoso.com/-----|
|FD1---------|Azure Front Door Premium profile|Configured as an endpoint for App1--------|
|contoso.com-|Azure DNS zone------------------|Contains a DNS CNAME record for App1 
|------------|--------------------------------|that resolves to an FQDN of app1.azurewebsites.net|

You discover that users connect directly to App1.

You need to meet the following requirements:

• Administrators must only access App1 by using a private endpoint.
• All user connections to App1 must be routed through FD1.
• The downtime of connections to App1 must be minimized.

Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

- [0] In the settings of FD1, configure the origin group to enable the Azure Private Link service.
- [1] In the settings of App1, approve a pending private endpoint connection.
- [2] In the settings of App1, create a private endpoint.
- [ ] For fd1.contoso.com, create a DNS A record that resolves to the IP address of the private endpoint.
- [ ] Change the DNS record of app1.contoso.com to resolve to the FQDN of FD1.
- [ ] For app1.contoso.com, create a DNS A record that resolves to the IP address of the private endpoint.
