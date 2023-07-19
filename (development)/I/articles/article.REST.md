
# REST Roy Fielding (35) in his doctoral dissertation in 2000.
    Representational State Transfer =  principles
    representational
        so representational mean , that there is some abstraction about the data , transfered from or into the server 
        you can use any data format
            Plain Text
            HTML
            CSV: tabular
            YAML: configuration
            Binary Formats: files
    Statelessness
        : Each request from a client to a server must contain all the information needed to understand and process the request. The server shouldn't store anything about the client between requests.
    
## REST (Representational State Transfer) is defined by six (6) guiding constraints or principles.

Client-Server: Object-Oriented Programming (OOP)
Stateless: Functional Programming (FP)
Cacheable: Procedural Programming
Uniform Interface: OOP / FP (as both rely heavily on clear interfaces)
Layered System: OOP (with its emphasis on encapsulation and modular design)
Code-On-Demand (optional): Event-Driven Programming

    inspiration from "French Through Their Eyes" by Walter Lippmann and Walter H. Buell:

        Client-Server: In the dance of savoir-vivre, one person (client) asks another (server) to dance (a request). The invitation can either be accepted (200 OK response) or politely declined (404 Not Found response).

        Stateless: Each social interaction is independent. Just because you had an intense political debate (POST /political-discussions) at the last dinner doesn't mean you should bring up politics at the next event.

        Cacheable: Remembering (caching) social etiquette, such as polite expressions and table manners, so you can use them when appropriate without needing to ask (send GET requests) each time.

        Uniform Interface: The consistency of the rules of etiquette. Regardless of the specific social situation, there are certain expectations and norms (GET, POST, PUT, DELETE) that are typically followed.

        Layered System: In a social event, you don't need to know all the behind-the-scenes efforts (back-end services) involved in preparing the event. You only interact with the 'presentation layer', i.e., the polished, well-organized event (client-facing API).

        Code-On-Demand (optional): Sometimes, a situation calls for specific knowledge or skills (like 'code'). For example, if you find yourself at a formal dinner, you'll need to recall the specific etiquette rules for such an event.


>>>>>>>>>>>>>
Here's why REST stands out:

Uniform Interface: REST uses standard HTTP methods which are well-defined and understood. This makes it easy for developers to understand and use the API without needing to learn a new protocol.

Scalability and Performance: The statelessness and cacheability of RESTful services make them highly scalable and can improve performance by reducing server load.

Interoperability and Flexibility: REST APIs can return data in multiple formats such as JSON, XML, HTML, etc., making it possible to serve a wide variety of clients. 
    REST protocol-independent, used with any protocol where a reliable transport is not required (is suitable for scenarios where the underlying protocol does not inherently provide features for guaranteed message delivery, acknowledgement, or error recovery.).

    SOAP (Simple Object Access Protocol) is protocol-agnostic and can be used over any protocol such as HTTP, SMTP, TCP, or even JMS.


Simplicity: Compared to SOAP, which requires a lot of XML configuration and has a steep learning curve, REST is simpler to learn, use, and implement.

Compatibility with Web Technologies: REST is a natural choice for use in web applications due to its compatibility with HTTP.
>>>

# protocols 
    TCP (Transmission Control Protocol), which ensure reliable and ordered delivery of messages between client and server. These protocols establish a connection, provide mechanisms for error detection and correction, and ensure that data is received in the intended order.