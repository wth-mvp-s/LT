##   4°_1from4



#### Q15.1? ::You are building a traffic monitoring system that monitors traffic along six highways. The system produces time series analysis-based reports for each highway.
`Data from traffic sensors are stored in Azure Event Hub.
`Traffic data is consumed by four departments. Each department has an Azure Web App that displays the time series-based reports and contains a WebJob that processes the incoming data from Event Hub. All Web Apps run on App Service Plans with three instances.
`Data throughput must be maximized. Latency must be minimized.
`You need to implement the Azure Event Hub.
`Which settings should you use? To answer, select the appropriate options in the answer area.
`
`Number of partitions

- [ ] 3
- [ ] 4
- [x] 6
- [ ] 12


#### Q15.2? ::You are building a traffic monitoring system that monitors traffic along six highways. The system produces time series analysis-based reports for each highway.
`Data from traffic sensors are stored in Azure Event Hub.
`Traffic data is consumed by four departments. Each department has an Azure Web App that displays the time series-based reports and contains a WebJob that processes the incoming data from Event Hub. All Web Apps run on App Service Plans with three instances.
`Data throughput must be maximized. Latency must be minimized.
`You need to implement the Azure Event Hub.
`Which settings should you use? To answer, select the appropriate options in the answer area.
`
`partition Key

- [x] Highway
- [ ] Department
- [ ] Timestamp
- [ ] VM name



#### Q16 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Deploy solution

- [x] Helm
- [ ] Draft
- [ ] Brigade
- [ ] KubeCtl
- [ ] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet


#### Q16.2 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`View cluster and external IP addressing. 

- [ ] Helm
- [ ] Draft
- [ ] Brigade
- [x] KubeCtl
- [ ] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet



#### Q16.3 ::You are developing a microservices solution. You plan to deploy the solution to a multinode Azure Kubernetes Service (AKS) cluster.
`You need to deploy a solution that includes the following features:
`✑ reverse proxy capabilities
`✑ configurable traffic routing
`✑ TLS termination with a custom certificate
`Which components should you use? To answer, drag the appropriate components to the correct requirements. Each component may be used once, more than once, or not at all. You may need to drag the split bar between panes or scroll to view content.
`
`Implement a single, public IP endpoint that is routed to multiple microservices. 

- [ ] Helm
- [ ] Draft
- [ ] Brigade
- [ ] KubeCtl
- [x] Ingress Controller
- [ ] CoreDNS
- [ ] Virtual Kubelet


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`FutoreOrders

- [x] SQLFilter
- [ ] CorrelationFilter
- [ ] No Filter


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`HighPriorityOrders

- [ ] SQLFilter
- [x] CorrelationFilter
- [ ] No Filter


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`InternationalOrders

- [x] SQLFilter
- [ ] CorrelationFilter
- [ ] No Filter


#### 0016_image  ::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`HighQuantityOrders

- [x] SQLFilter
- [ ] CorrelationFilter
- [ ] No Filter


#### 0016_image  [???110voters]::You are implementing an order processing system. 
`A point of sale application publishes orders to topics in an Azure Service Bus queue. The Label property for the topic includes the following data:
`¦---Property-------¦-------Description------------------------¦
`¦-------------------------------------------------------------¦
`¦-ShipLocation-----¦-the country/region where ----------------¦
`¦------------------¦-the orderwill be shipped ----------------¦
`¦-------------------------------------------------------------¦
`¦-CorrelationId----¦-a priority value for the order-----------¦
`¦-------------------------------------------------------------¦
`¦-Quantity---------¦-a user-defined field that stores --------¦
`¦------------------¦-the quantity of items in an -------------¦
`¦------------------¦-order------------------------------------¦
`¦-------------------------------------------------------------¦
`¦-AuditedAt--------¦-a user-defined field that records--------¦
`¦------------------¦-the data an order is audited-------------¦
`¦-------------------------------------------------------------¦
`The system has the following requirements for subscriptions:
`
`¦---FutureOrders---¦-This subscription is reserved for future-¦
`¦------------------¦------use and must not receive any orders-¦
`¦-------------------------------------------------------------¦
`¦HighPriorityOrders¦-Handle all high priority orders and------¦
`¦----------------------------------------international orders-¦
`¦-------------------------------------------------------------¦
`¦InternationalOrders¦-Handle orders where the country/region is
`¦-----------------------not United States---------------------¦
`¦-------------------------------------------------------------¦
`¦HighQuantityOrders-¦-Handle only orders with quantyities-----¦
`¦------------------------greater than 100 units---------------¦
`¦-------------------------------------------------------------¦
`¦AllOrders-----------¦-This subscription is used for auditing
`¦purposes. This subscription must receive every single order.
`¦AllOrders has an Action defined that updates the AuditedAt
`¦property to include the data and time it was received by the
`¦subscription. 
`
`
`You need to implement filtering and maximize throughput while evaluating filters.
`Which filter types should you implement?
`
`AllOrders

- [ ] SQLFilter
- [ ] CorrelationFilter
- [x] No Filter


