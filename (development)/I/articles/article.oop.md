Kimoop 
    def
    problem solving 
    how not true

A
    object types
        ADT Abstract Data Type
            is a composite of data along with the definition of all legal operations that access it.
            
            Protection (integrity): The interface should be understood as a hermetic border. The user should know exactly what an ADT does, but not how to do it.

            principle of protection (also known as encapsulation) is aimed at maintaining the integrity of the data and the methods that operate on that data.
I
    derived classes, inherit attributes and behavior
    Derived classes can also add and override methods and properties from the base class.
# E
    prevented unwanted modif on data members (STATE OF OBJECT), change only by class operations

##      data hiding
            The attributes or data of a class (its state) are hidden from other classes and can only be accessed through methods provided by the class.
##      encapsulation of behavior
            The class provides a public interface (methods) for other classes to interact with its data.
            
            public class MyObject
            {
                private string Make = "Toyota"  // internal state of the Car object protected and controlled, fulfilling the encapsulation principle (code correctly applies the principle).
                private string Model = "Camry" 
                private int Year = 2022

                public string GetModel()
                {
                    return this.Model;
                }
                public int GetYear()
                {
                    return this.Year;
                }
    
                public void SetModel(string model)
                {
                    this.Model = model;
                }
            }
        
P
    interface let general class of actions. method in a class that behaves slightly differently in a subclass - the same method name, but with different underlying implementation.

Modularity
    safe programming and easy exchange of program parts. 
    When troubleshooting, individual modules can be viewed in a very isolated manner.
    Many improvements can be subsequently adopted via ADTs without the slightest change in all environment or application programs.

# struct
- C#, structs are inherently immutable (can't be changed after creation). 
- Grouping Related Data


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