1 -1


#### 020;1.1f1::
`Your on-premises network contains an Active Directory Domain Services (AD DS) domain named contoso.com that has an internal certification authority (CA).
`
`You have an Azure subscription.
`
`You deploy an Azure application gateway named AppGwy1 and perform the following actions:
`
`• Configure an HTTP listener
`• Associate a routing rule with the listener
`
`You need to configure AppGwy1 to perform mutual authentication for requests from domain-joined computers to contoso.com.
`
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`::
`The Story: "The Secure Gateway Festival"
`
`Imagine you're organizing a big festival (AppGwy1) in your town (contoso.com). The goal of the festival is to ensure that only residents of the town (domain-joined computers) can enter and enjoy the festivities, and you want to make sure that everyone is who they say they are (mutual authentication).
`
`Preparing the Entry Gate (Creating an SSL profile)
`Before you can start checking tickets, you need to set up a secure entry gate. This gate is special—it checks both the tickets of the visitors and confirms the identity of the security staff (SSL profile). This is your first step because without a secure gate, you can't verify everyone properly.
`Issuing Secure Tickets (Uploading a certificate)
`Now that the gate is ready, you need tickets that are secure and hard to fake. You decide to issue special electronic tickets (certificate) that can be verified at the entry gate. You take a certificate from the town hall (on-premises computer) and make sure it can be read by the gate's scanners by uploading it to the festival's control system (AppGwy1).
`Setting Up the Scanners (Adding an HTTP listener and associating it to the SSL profile)
`With the secure gate and tickets ready, you need to set up the scanners (HTTP listener) that will read the tickets as the guests arrive. These scanners are connected to the gate's security system (associate the listener to the SSL profile) to ensure that every ticket is checked against the secure list.
`Organizing the Festival Paths (Creating a routing rule)
`Finally, once visitors are inside, you need to guide them to various parts of the festival (routing rule). This way, everyone knows where to go to enjoy the festival, ensuring a smooth flow of traffic and a better experience for everyone.

- [0] From AppGwyl, create an SSL profile. 
- [1] From an on-premises computer, upload a certificate to AppGwy1 
- [2] From AppGwyl, add an HTTP listener and associate the listener to the SSL profile. 
- [3] From AppGwy1, create a routing rule. 
- [ ] From AppGwy1, Create a frontend IP configuration. 

2 -3


#### 028::
`You have an on-premises network.
`
`You have an Azure subscription that contains a virtual network named VNet1. VNet1 contains an ExpressRoute gateway.
`
`You need to connect VNet1 to the on-premises network by using an ExpressRoute circuit.
`
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`::
`Imagine two cities: Azure City (Azure virtual network) and Home Town (your on-premises network). To improve communication and transport between these two cities, you decide to build a private bridge (ExpressRoute circuit). Here’s how you would proceed:
`
`Planning and Initiating Construction (Create the ExpressRoute circuit)
`First, you need to lay down the foundation and structure of the bridge. This involves planning the route and construction specifications (creating the ExpressRoute circuit). It’s the essential first step to physically connect the two cities.
`Ge1tting Approval and Permits (Send a service key to your connectivity provider)
`Once the plans are in place, you must get the necessary approvals and permits to proceed. You send the service key, which is like an official request or permit application, to your connectivity provider. This key is crucial as it allows you to begin actual construction under approved standards.
`Setting Up Direct Routes (Configure Azure private peering)
`With the construction underway, you need to set up direct and secure routes on the bridge. These routes (Azure private peering) are designed for private communication between Azure City and Home Town, ensuring that data travels securely without public access.
`Opening the Bridge (Create a connection from VNet1 to the ExpressRoute circuit)
`Finally, once everything is set up, you officially open the bridge by connecting it from Azure City’s side (VNet1) to the structure you’ve built (ExpressRoute circuit). This action symbolizes the bridge being open for secure, direct traffic between the cities.

- [0] Create the Express Route circuit.
- [1] Send a service key to your connectivity provider.
- [2] Configure Azure private peering.
- [3] Create a connection from VNet1 to the Express Route circuit.
- [ ] Configure Azure public peering.



#### 044::
`You have an Azure subscription that contains the resources shown in the following table.
`
`
`|-Name-----|-Type------------|-Location-|
`|----------|-----------------|----------|
`|WebApp1---|-Web-app---------|-West-US--|
`|VNet1-----|-Virtual-network-|-East-US--|
`
`
`The IP Addresses settings for Vnet1 are configured as shown in the exhibit.
`
`## Basic IP Addresses Security Tags Review + Create
`
`### IPv4 Address Space
`- **Address Space**: The virtual network's address space is specified as one or more address prefixes in CIDR notation (e.g., '192.168.1.0/24').
`- **Example**:
`  - '10.3.0.0/16' - '10.3.0.0' to '10.3.255.255' (65,536 addresses)
`
`### IPv6 Address Space
`- [ ] Add IPv6 address space
`
`### Subnets
`- **Description**: The subnet's address range in CIDR notation (e.g., '192.168.1.0/24'). It must be contained by the address space of the virtual network.
`  - [+] Add subnet
`  - [ ] Remove subnet
`
`#### Subnet Details
`- **Subnet Name**: Subnet1
`- **Subnet Address Range**: '10.3.0.0/16'
`- **NAT Gateway**: (Optional) Use of a NAT gateway is recommended for outbound internet access from a subnet. You can deploy a NAT gateway and assign it to a subnet after you create the virtual network. [Learn more](#)
`
`
`
`
`You need to ensure that you can integrate WebApp1 and Vnet1.
`Which three actions should you perform in sequence before you can integrate WebApp1 and Vnet1? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`::
`To integrate WebApp1, which is located in the West US region, with VNet1, which is located in the East US region, and ensure secure connectivity, you should follow these steps in sequence:
`
`Deploy a VPN Gateway:
`
`First, you need to deploy a VPN gateway in VNet1. This gateway will facilitate the secure tunnel required for data to travel securely over the internet between VNet1 and any other network, including the network that hosts WebApp1. This is crucial for ensuring that traffic between the two can be encrypted and routed appropriately.
`Create a Service Endpoint:
`
`After establishing a VPN gateway, the next step is to create a service endpoint. This will allow you to extend your virtual network's private address space and the identity of VNet1 into Azure services, such as Azure Storage and SQL databases, more securely. For integrating with WebApp1 specifically, you'll configure service endpoints that enable secure and direct connectivity from the WebApp to the services hosted within VNet1, leveraging Azure's internal backbone network.
`Add a Private Endpoint:
`
`Finally, add a private endpoint in VNet1 for WebApp1. A private endpoint uses a private IP address from VNet1 to enable access to services like Azure Web Apps securely over a private link. This helps in keeping traffic on the Azure network, avoiding exposure to the public internet, and reducing latency as the services are in different geographic locations.
`By following these steps, you can ensure a secure and reliable connection between WebApp1 and VNet1, leveraging Azure’s networking capabilities.
`
`MNEMONIC 
`
`Imagine that WebApp1 is like a remote office located far from the main headquarters (VNet1). The main office is in East-US, and the remote office is in West-US. The goal is to establish a secure, direct line of communication between these two locations.
`
`Establishing the Infrastructure (Deploy a VPN gateway)
`First, to connect these two offices securely, you need to build a strong and secure infrastructure. This involves installing a VPN gateway at the headquarters (VNet1). The VPN gateway acts like a main door through which all traffic between the headquarters and the remote office will pass, ensuring that it is secure and private.
`Setting Up a Secure Connection (Configure a Point-to-Site (P2S) VPN)
`With the gateway in place, the next step is to set up a Point-to-Site (P2S) VPN. This is like creating a dedicated, secure phone line from each individual workstation at the remote office (WebApp1) directly to the headquarters. This setup ensures that employees at the remote office can securely access resources at the headquarters without interference from the outside world.
`Integrating the Network (Create a private endpoint)
`Finally, to make the integration seamless, you establish a private endpoint in the headquarters’ network (VNet1) specifically for the remote office (WebApp1). This private endpoint acts like a dedicated desk or office within the headquarters that handles all communications and services directly and privately with the remote office.

- [0] Modify the address space of Vnet1
- [1] Deploy a VPN gateway
- [2] Configure a Point-to-Site (P2S) VPN
- [ ] Create a service endpoint
- [ ] Add a private endpoint



#### 046::
`You have three on-premises sites. Each site has a third-party VPN device.
`You have an Azure virtual WAN named VWAN1 that has a hub named Hub1. Hub1 connects two of the three on-premises sites by using a Site-to-Site VPN connection.
`You need to connect the third site to the other two sites by using Hub1.
`Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place:
`::
`In Hub1, Create a VPN Site:
`
`First, you need to define a new VPN site in Azure Virtual WAN for the third on-premises location. This involves specifying details about the third site such as its geographical location, IP address of the VPN device, and other pertinent settings. This step essentially registers the third site in Azure Virtual WAN.
`In Hub1, Create a Connection to the VPN Site:
`
`After the VPN site is defined, create a connection from Hub1 to this new VPN site. 
`This connection uses the details provided in the previous step to establish a link between the Azure hub and the on-premises VPN device.
`Download the VPN Configuration File from VWAN1:
`
`Once the connection is created, download the VPN configuration file from Azure Virtual WAN. This file contains the necessary configuration details such as IPsec/IKE policies, pre-shared keys, and other necessary parameters that will be used to configure the third-party VPN device.
`Configure the VPN Device:
`
`The final step involves configuring the on-premises VPN device using the VPN configuration file downloaded from Azure. This setup will align the device's settings with Azure's requirements, ensuring a secure and stable VPN tunnel between the third site and Hub1.
`
`::
`MNEMONIC
`
`hub = electrical socket that provides the connection point and the necessary infrastructure for various devices (or network sites) to plug into. This socket is centralized and facilitates connectivity, power, and communication among the devices plugged into it.
`
`The VPN device, = an electrical plug. It's what you use to connect an appliance (or a network site) to the socket (the hub). The plug ensures that the connection is secure, stable, and fits correctly to enable the flow of electricity (or data) safely and efficiently.
`
`VPN site = s the cable that connects the electrical bulb (the on-premises network site) to the plug (the VPN device), which then connects to the socket (the hub in Azure).

- [0] In a Hub1, create a VPN site
- [1] In a Hub1, create a connection to the VPN site
- [2] Download the VPN configuration file from VWAN1
- [3] Configure the VPN device
- [ ] In a Hub1, create a VPN gateway


3 -2

#### 001;p3_1f1::
`You register a DNS domain with a third-party registrar.
`You need to host the DNS zone on Azure.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.



- [0] Create a public DNS zone.
- [1] Identify the FQDNs of the name servers.
- [2] Modify the NS records for the domain.
- [ ] Identify the IP addresses of the name servers.
- [ ] Modify the SOA records for the domain.

4 -1


#### 001;p4_1f1::
`You have an Azure subscription that contains the resources shown in the following table.
`
`
`
`You need to associate Gateway1 with Subnet1. The solution must minimize downtime on VM1.
`
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.



- [0] Disassociate PIP1 from NIC1.
- [1] Change the PIP1 SKU to Standard.
- [2] Associate PIP1 to NIC1.
- [ ] Change Assignment to Dynamic for PIP1.
- [ ] Shutdown VM1.
- [ ] Start VM1.

5 -1


#### 001::
`You have an Azure Front Door instance named FrontDoor1.
`You deploy two instances of an Azure web app to different Azure regions.
`You plan to provide access to the web app through FrontDoor1 by using the name app1.contoso.com.
`You need to ensure that FrontDoor1 is the entry point for requests that use app1.contoso.com.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`Select and Place::

- [0] Add a CNAME record to DNS.
- [1] Add a custom domain to FrontDoor1.
- [2] Add a routing rule to FrontDoor1.
- [ ] Add a PTR record to DNS.
- [ ] Add a rules engine configuration to FrontDoor1.




6 -0
7 -0
8 -1


#### 001;8.1f2::
You have an Azure subscription that contains an Azure VPN gateway named GW1. GW1 provides Point-to-Site (P2S) VPN connectivity.

Users connect to GW1 from a Windows 11 device by using an SSTP connection.

You need to ensure that the P2S VPN connections support Azure AD authentication.

Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.

NOTE: More than one order of answer choices is correct. You will receive credit for any of the correct orders you select.


- [0] Grant the Azure VPN application admin consent to the Azure AD tenant.
- [1] For the point-to-site configuration of GW1, set Authentication type to Azure Active Directory and set Tunnel type to IKEv2 and SSTP (SSL).
- [2] Download the Azure VPN Client profile configuration package and distribute the package to the users.
- [ ] Register the Microsoft.Hybrid Network resource provider.
- [ ] For the point-to-site configuration of GW1, set Authentication type to Azure Active Directory and set Tunnel type to OpenVPN (SSL).


9 -3

You have an Azure virtual network named Vnet1 that connects to an on-premises network.
You have an Azure Storage account named storageaccount1 that contains blob storage.
You need to configure a private endpoint for the blob storage. The solution must meet the following requirements:
✑ Ensure that all on-premises users can access storageaccount1 through the private endpoint.
✑ Prevent access to storageaccount1 from being interrupted.
Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.



- [0] Configure a private endpoint on storageaccount1 and disable public access to the account 
- [1] Deploy a virtual machine to a subnet in Vnet1
- [2] Install the DNS server role and configure the forwarding of blob.core.windows.net to 168.63.129.16
- [3] Configure on-premises DNS servers to forward blob.core.windows.net to the virtual machine
- [ ] Configure on-premises DNS server to forward blob.core.windows.net to 168.63.129.16

//
You have two Azure subscriptions named Subscription1 and Subscription2. Subscription1 contains a virtual network named Vnet1. Vnet1 contains an application server. Subscription2 contains a virtual network named Vnet2.
You need to provide the virtual machines in Vnet2 with access to the application server in Vnet1 by using a private endpoint.
Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
Select and Place:



- [0] Deploy an Azure Standard Load Balancer in front of the application server.
- [1] In Subscription 1, create a private link service and attach the service to the frontend IP configuration of the load balancer.
- [2] In Subscription 2, create a private endpoint by using the private link service.
- [3] In Subscription 1, accept the private endpoint connection request.
- [ ] Enable virtual network peering between Vnet1 and Vnet2.
Answer Area


//


You have an Azure virtual network named Vnet1 that connects to an on-premises network.
You have an Azure Storage account named storageaccount1 that contains blob storage.
You need to configure a private endpoint for the blob storage. The solution must meet the following requirements:
✑ Ensure that all on-premises users can access storageaccount1 through the private endpoint.
✑ Prevent access to storageaccount1 from being interrupted.
Which four actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
Select and Place:


- [0] Configure a private endpoint on storageaccount1 and disable public access to the account 
- [1] Deploy a virtual machine to a subnet in Vnet1
- [2] Install the DNS server role and configure the forwarding of blob.core.windows.net to 168.63.129.16
- [3] Configure on-premises DNS servers to forward blob.core.windows.net to the virtual machine
- [ ] Configure on-premises DNS server to forward blob.core.windows.net to 168.63.129.16

10 -2

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


//
10 


#### 010.008::
`Introductory Info
`Case Study -
`This is a case study. Case studies are not timed separately. You can use as much exam time as you would like to complete each case. However, there may be additional case studies and sections on this exam. You must manage your time to ensure that you are able to complete all questions included on this exam in the time provided.
`To answer the questions included in a case study, you will need to reference information that is provided in the case study. Case studies might contain exhibits and other resources that provide more information about the scenario that is described in the case study. Each question is independent of the other questions in this case study.
`At the end of this case study, a review screen will appear. This screen allows you to review your answers and to make changes before you move to the next section of the exam. After you begin a new section, you cannot return to this section.
`
`To start the case study -
`To display the first question in this case study, click the Next button. Use the buttons in the left pane to explore the content of the case study before you answer the questions. Clicking these buttons displays information such as business requirements, existing environment, and problem statements. When you are ready to answer a question, click the Question button to return to the question.
`
`Overview -
`Litware, Inc. is a financial company that has a main datacenter in Boston and 20 branch offices across the United States. Users have Android, iOS, and Windows
`10 devices.
`
`Existing Environment -
`
`Hybrid Environment -
`The on-premises network contains an Active Directory forest named litwareinc.com that syncs to an Azure Active Directory (Azure AD) tenant named litwareinc.com by using Azure AD Connect.
`All offices connect to a virtual network named Vnet1 by using a Site-to-Site VPN connection.
`
`Azure Environment -
`Litware has an Azure subscription named Sub1 that is linked to the litwareinc.com Azure AD tenant. Sub1 contains resources in the East US Azure region as shown in the following table.
`
`
``|Name---------------|Type-----------------|Description--------------------------------------------------|
``|Vnet1--------------|Virtual-network------|Uses-an-IP-address-space-of-192.168.0.0/20-----------------|
``|GatewaySubnet------|Virtual-network-subnet|Located-in-Vnet1-and-uses-an-IP-address-space-of-192.168.15.128/29|
``|VPNGW1-------------|VPN-gateway----------|Deployed-to-Vnet1------------------------------------------|
``|Vnet2--------------|Virtual-network------|Uses-an-IP-address-space-of-192.168.16.0/20----------------|
``|SubnetA------------|Virtual-network-subnet|Located-in-Vnet2-and-uses-an-IP-address-space-of-192.168.16.0/24|
``|Vnet3--------------|Virtual-network------|Uses-an-IP-address-space-of-192.168.32.0/20----------------|
``|cloud.litwareinc.com|Private-DNS-zone----|None-------------------------------------------------------|
``|VMScaleSet1--------|scale-set------------|Contains-four-virtual-machines-deployed-to-SubnetA--------|
``|VMScaleSet2--------|scale-set------------|Contains-two-virtual-machines-deployed-to-SubnetA---------|
``|storage1-----------|Storage-account------|Has-the-public-endpoint-blocked---------------------------|
``|storage2-----------|Storage-account------|Has-the-public-endpoint-blocked---------------------------|
`
`A diagram of the resource in the East US Azure region is shown in the Azure Network Diagram exhibit.
`There is bidirectional peering between Vnet1 and Vnet2. There is bidirectional peering between Vnet1 and Vnet3. Currently, Vnet2 and Vnet3 cannot communicate directly.
`
`Azure Network Diagram -
`
`Vnet1-------------192.168.0.0/20
`----|                
`----|----GatewaySubnet------192.168.15.128/29
`----|
`----|----VPNGW1
`----|
`----+----<Bidirectional-peering>-------Vnet2-------------192.168.16.0/20
`---------|      
`---------|----SubnetA---<>
`---------|---------|
`---------|---------+----VMScaleSet1---4-VMs
`---------|---------|
`---------|---------+----VMScaleSet2---2-VMs
`----|
`----+----<Bidirectional-peering>-------Vnet3-------------192.168.32.0/20
`
`storage1
`storage2
`
`(DNS*)
`Cloud.litwareinc.com
`
`
`Requirements -
`
`Business Requirements -
`Litware wants to minimize costs whenever possible, as long as all other requirements are met.
`
`Virtual Networking Requirements -
`Litware identifies the following virtual networking requirements:
`Direct the default route of 0.0.0.0/0 on Vnet2 and Vnet3 to the Boston datacenter over an ExpressRoute circuit.
`Ensure that the records in the cloud.litwareinc.com can be resolved from the on-premises locations.
`Automatically register the DNS names of Azure virtual machines to the cloud.litwareinc.com zone.
`Minimize the size of the subnets allocated to platform-managed services.
`Allow traffic from VMScaleSet1 to VMScaleSet2 on the TCP port 443 only.
`
`Hybrid Networking Requirements -
`Litware identifies the following hybrid networking requirements:
`Users must be able to connect to Vnet1 by using a Point-to-Site (P2S) VPN when working remotely. Connections must be authenticated by Azure AD.
`Latency of the traffic between the Boston datacenter and all the virtual networks must be minimized.
`The Boston datacenter must connect to the Azure virtual networks by using an ExpressRoute FastPath connection.
`Traffic between Vnet2 and Vnet3 must be routed through Vnet1.
`
`PaaS Networking Requirements -
`Litware identifies the following networking requirements for platform as a service (PaaS):
`The storage1 account must be accessible from all on-premises locations without exposing the public endpoint of storage1.
`The storage2 account must be accessible from Vnet2 and Vnet3 without exposing the public endpoint of storage2.
`Question
`You need to prepare Vnet1 for the deployment of an ExpressRoute gateway. The solution must meet the hybrid connectivity requirements and the business requirements.
`Which three actions should you perform in sequence for Vnet1? To answer, move the appropriate actions from the list of actions to the answer.
`Select and Place:
`::
`1. Delete VPN GW1.
`2. Set the subnet mask of Gateway Subnet to /27.
`3. Create a VPN gateway by using the VPN GW1 SKU.
`
`Basic VPN Gateway does not support P2S.
`If the gateway subnet is /29, you've to first delete the virtual network gateway and increase the gateway subnet size.

- [0] Delete VPN GW1.
- [1] Set the subnet mask of Gateway Subnet to /27.
- [2] Create a VPN gateway by using the VPN GW1 SKU.
- [ ] Create a VPN gateway by using the Basic SKU.
- [ ] Assign a user-defined route to Gateway Subnet.



#### 010.015::
`Introductory Info
`Case Study -
`This is a case study. Case studies are not timed separately. You can use as much exam time as you would like to complete each case. However, there may be additional case studies and sections on this exam. You must manage your time to ensure that you are able to complete all questions included on this exam in the time provided.
`To answer the questions included in a case study, you will need to reference information that is provided in the case study. Case studies might contain exhibits and other resources that provide more information about the scenario that is described in the case study. Each question is independent of the other questions in this case study.
`At the end of this case study, a review screen will appear. This screen allows you to review your answers and to make changes before you move to the next section of the exam. After you begin a new section, you cannot return to this section.
`
`To start the case study -
`To display the first question in this case study, click the Next button. Use the buttons in the left pane to explore the content of the case study before you answer the questions. Clicking these buttons displays information such as business requirements, existing environment, and problem statements. When you are ready to answer a question, click the Question button to return to the question.
`
`Overview -
`Litware, Inc. is a financial company that has a main datacenter in Boston and 20 branch offices across the United States. Users have Android, iOS, and Windows
`10 devices.
`
`Existing Environment -
`
`Hybrid Environment -
`The on-premises network contains an Active Directory forest named litwareinc.com that syncs to an Azure Active Directory (Azure AD) tenant named litwareinc.com by using Azure AD Connect.
`All offices connect to a virtual network named Vnet1 by using a Site-to-Site VPN connection.
`
`Azure Environment -
`Litware has an Azure subscription named Sub1 that is linked to the litwareinc.com Azure AD tenant. Sub1 contains resources in the East US Azure region as shown in the following table.
`
`
``|Name---------------|Type-----------------|Description--------------------------------------------------|
``|Vnet1--------------|Virtual-network------|Uses-an-IP-address-space-of-192.168.0.0/20-----------------|
``|GatewaySubnet------|Virtual-network-subnet|Located-in-Vnet1-and-uses-an-IP-address-space-of-192.168.15.128/29|
``|VPNGW1-------------|VPN-gateway----------|Deployed-to-Vnet1------------------------------------------|
``|Vnet2--------------|Virtual-network------|Uses-an-IP-address-space-of-192.168.16.0/20----------------|
``|SubnetA------------|Virtual-network-subnet|Located-in-Vnet2-and-uses-an-IP-address-space-of-192.168.16.0/24|
``|Vnet3--------------|Virtual-network------|Uses-an-IP-address-space-of-192.168.32.0/20----------------|
``|cloud.litwareinc.com|Private-DNS-zone----|None-------------------------------------------------------|
``|VMScaleSet1--------|scale-set------------|Contains-four-virtual-machines-deployed-to-SubnetA--------|
``|VMScaleSet2--------|scale-set------------|Contains-two-virtual-machines-deployed-to-SubnetA---------|
``|storage1-----------|Storage-account------|Has-the-public-endpoint-blocked---------------------------|
``|storage2-----------|Storage-account------|Has-the-public-endpoint-blocked---------------------------|
`
`A diagram of the resource in the East US Azure region is shown in the Azure Network Diagram exhibit.
`There is bidirectional peering between Vnet1 and Vnet2. There is bidirectional peering between Vnet1 and Vnet3. Currently, Vnet2 and Vnet3 cannot communicate directly.
`
`Azure Network Diagram -
`
`Vnet1-------------192.168.0.0/20
`----|                
`----|----GatewaySubnet------192.168.15.128/29
`----|
`----|----VPNGW1
`----|
`----+----<Bidirectional-peering>-------Vnet2-------------192.168.16.0/20
`---------|      
`---------|----SubnetA---<>
`---------|---------|
`---------|---------+----VMScaleSet1---4-VMs
`---------|---------|
`---------|---------+----VMScaleSet2---2-VMs
`----|
`----+----<Bidirectional-peering>-------Vnet3-------------192.168.32.0/20
`
`storage1
`storage2
`
`(DNS*)
`Cloud.litwareinc.com
`
`
`Requirements -
`
`Business Requirements -
`Litware wants to minimize costs whenever possible, as long as all other requirements are met.
`
`Virtual Networking Requirements -
`Litware identifies the following virtual networking requirements:
`Direct the default route of 0.0.0.0/0 on Vnet2 and Vnet3 to the Boston datacenter over an ExpressRoute circuit.
`Ensure that the records in the cloud.litwareinc.com can be resolved from the on-premises locations.
`Automatically register the DNS names of Azure virtual machines to the cloud.litwareinc.com zone.
`Minimize the size of the subnets allocated to platform-managed services.
`Allow traffic from VMScaleSet1 to VMScaleSet2 on the TCP port 443 only.
`
`Hybrid Networking Requirements -
`Litware identifies the following hybrid networking requirements:
`Users must be able to connect to Vnet1 by using a Point-to-Site (P2S) VPN when working remotely. Connections must be authenticated by Azure AD.
`Latency of the traffic between the Boston datacenter and all the virtual networks must be minimized.
`The Boston datacenter must connect to the Azure virtual networks by using an ExpressRoute FastPath connection.
`Traffic between Vnet2 and Vnet3 must be routed through Vnet1.
`
`PaaS Networking Requirements -
`Litware identifies the following networking requirements for platform as a service (PaaS):
`The storage1 account must be accessible from all on-premises locations without exposing the public endpoint of storage1.
`The storage2 account must be accessible from Vnet2 and Vnet3 without exposing the public endpoint of storage2.
`Question
`
`You need to implement outbound connectivity for VMScaleSet1. The solution must meet the virtual networking requirements and the business requirements.
`Which three actions should you perform in sequence? To answer, move the appropriate actions from the list of actions to the answer area and arrange them in the correct order.
`::
`HTTPS health probe and Outbound Rules are ONLY supported on STD LB
`
`Create a Standard Load Balancer:
`Specify the load balancer's name, SKU (Standard), and public frontend IP configuration.
`Configure the HTTPS protocol for the frontend IP configuration.
`Set up the SSL certificate if required.
`Create a Backend Pool:
`Create a backend pool that includes the virtual machines in VMScaleSet1.
`Associate the backend pool with the frontend IP configuration of the load balancer.
`Configure Health Probe:
`Create a health probe with the required settings, such as the port (443) and probe interval.
`Associate the health probe with the backend pool.
`Create Outbound Rule:
`Define an outbound rule for the load balancer.
`Specify the backend pool and health probe to use for outbound traffic.
`
`Create a public load balancer in the Standard SKU:
`Think of this like buying a new gaming console. It's the main device you need. The "Standard SKU" means you're getting the version that has all the necessary features, not just the basic one.
`Create a backend pool that contains VMScaleSet1:
`Imagine gathering all your favorite games to play on this console. The backend pool is like a collection of games (here, it's the virtual machines in VMScaleSet1) that the console can run.
`Create an outbound rule:
`Set up the rules for who can play and when. Just like setting parental controls on your gaming console, creating an outbound rule controls how the virtual machines can connect to the outside world, ensuring they communicate securely and efficiently.

- [0] Create a public load balancer in the Standard SKU
- [1] Create a backend pool that contains VMScaleSet1
- [2] Create an outbound rule
- [ ] Create a health probe
- [ ] Create a public load balancer in the Basic SKU
- [ ] Create a NAT rule
