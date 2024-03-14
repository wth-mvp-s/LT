SKU ::Stock Keeping Unit:: SKU stands for Stock Keeping Unit. In the context of Azure services, SKU refers to a specific version of a service that dictates its capabilities, performance, and pricing. SKUs help differentiate between various offerings of a service, such as capacity, capabilities, or performance levels, allowing customers to choose the one that best fits their requirements and budget.

NAT ::Network Address Translation
BGP ::Border Gateway Protocol:: (BGP) is a standardized exterior gateway protocol designed to exchange routing and reachability information among autonomous systems (AS) on the Internet.
BFD::Bidirectional Forwarding Detection
TCP ::	transmission control protocol::a protocol developed for the internet to get data from one network device to another Synonyms	


NS record:: nameserver:: What is a DNS NS record? NS stands for 'nameserver,' and the nameserver record indicates which DNS server is authoritative for that domain (

WAF::Web Application Firewall (WAF).

12076::Microsoft reserves _____ for Azure public, Azure private, and Microsoft peering. 
65515::Microsoft reserves _____ for internal use. Virtual networks are created with the default ASN of _____.
OpenVPN ::______is the only protocol that can use Azure AD-based authentication.

S2S:: This type of VPN is designed to connect entire networks to each other, typically connecting an on-premises network to an Azure VNet or connecting two Azure VNets. It is not suitable for individual client connections because it expects a VPN device or gateway on each side of the connection, not a single client computer.::Site-to-Site (S2S) VPN

VNet Peering:: ______ is used to connect two Azure Virtual Networks seamlessly. It allows resources in either VNet to communicate with each other as if they were within the same network. However, it does not provide a way for a remote client to establish a VPN connection into an Azure VNet.

VNet-to-VNet :: Similar to S2S VPNs, ______ connections are designed to connect Azure VNets together, not for individual client connections. This method also relies on VPN gateways in each VNet.

Route Tables:: While _____ are important for controlling the flow of network traffic within Azure, including traffic that goes through a VPN gateway, they do not facilitate the actual connection process for a remote client. They are more about managing traffic once a connection is established.

Service Endpoints:: ______ provide secure and direct connectivity to Azure services over the Azure backbone network. However, they are used to secure Azure service resources to a VNet, not for facilitating remote client connections to VNets.

seamless::VNet peering is used to connect two Azure Virtual Networks ------- (how).


Wide Area Network::, is a telecommunications network that extends over a large geographical area for the purpose of computer networking. _____s are used to connect smaller networks, such as local area networks (LANs) or metro area networks (MANs), enabling businesses, governments, and individuals to communicate and share data over long distances. Unlike LANs, which are typically restricted to a single building or site, _____s can span cities, regions, countries, or even continents.::WAN

private endpoints::Unlike most services in Azure, _______ do not require a dedicated subnet 
26::Azure Firewall requires a /__ subnet allocated to it, 
BGP::Azure Route Server supports only the _____ protocol.

subnet::In Azure, you create a route table, and then associate the route table to zero or more ___. Each ______can have zero or one route tables associated to it.::virtual network subnets