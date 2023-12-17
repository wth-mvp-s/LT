it.000.abreviations.test

XSRF:: Cross-Site Request Forgery :: 
`This is an attack that tricks the victim into submitting a malicious request. It makes use of the identity and privileges of the victim to perform an undesired function on their behalf.


XSS:: Cross-Site-Scripting :: 
`This is a type of security vulnerability typically found in web applications that allows attackers to inject malicious scripts into web pages viewed by other users. 
`These scripts can be used to steal sensitive information or perform actions on behalf of the user without their consent.


CSP:: Content Security Policy :: 
`This is a computer security standard introduced to prevent cross-site scripting (XSS), 
`clickjacking, and other code injection attacks. 
`
`It allows web developers to control resources the user agent is allowed to load for a given page, 
`effectively reducing the attack surface of their applications.
`
`Already defined above, it's a standard designed to prevent certain types of security vulnerabilities 
`that web developers can use to specify how and where a browser should load resources from.


ARIA:: Accessible Rich Internet Applications attributes :: 
`This is a set of attributes that define ways to make web content and web applications more accessible to people with disabilities. 
`It helps provide information about user interface controls and complex widgets and behaviors in accessible formats.


CORS:: Cross-Origin Resource Sharing :: 
`This is a mechanism that allows many resources (e.g., fonts, JavaScript, etc.) 
`on a web page to be requested from another domain outside the domain from which the resource originated. 
`It's a technology specification that provides a way to share resources across different origins.


DOM:: Document Object Model :: 
`This is a programming interface for web documents. 
`It represents the structure of a document (like HTML or XML) 
`and allows programs and scripts to manipulate the content, 
`structure, and style of the documents.




C#, structs are ... (can't be changed after creation).  ::inherently immutable :: z natury niezmienne


The attributes or data of a class (its state) are hidden from other classes and can only be accessed through methods provided by the class. ::data hiding 


The class provides a public interface (methods) for other classes to interact with its data. :: encapsulation of behavior 


Safe Navigation Operator (write like this.) :: (?.) 


(1, 2, 3, 5, 8, 13, 21, etc.) common scale for Planning Poker [name (year-year)]::Fibonacci sequence (1170-1240) 


DTO::data transfer object

UML::Unified Modeling Language

AAA::Arrange Act Assert

CQRS::Command and Query Responsibility Segregation


var studentsStartingWithA = (from s in context.Students where s.Name.StartsWith("A") select s).ToList();::Query Syntax

var studentsStartingWithA = context.Students.Where(s => s.Name.StartsWith("A")).ToList();::Method Syntax:: (or Lambda Syntax)


UDTT:: USER-DEFINED-TABLE-TYPES

The four pillars of Object-Oriented Programming (OOP)::Abstraction Polymorphism Inheritance Encapsulation::
`Encapsulation: is about bundling the data (attributes) and the methods (functions) that operate on the data into a single unit known as a class. 
`Additionally, encapsulation refers to restricting direct access to certain components of the object 
`and only allowing access through well-defined interfaces, typically using private and public access modifiers.
`
`Inheritance is a mechanism by which a new class can inherit properties and behaviors (methods) from an existing class. 
`This promotes code reuse and establishes a natural hierarchy between objects. 
`The class that is being inherited from is often called the "base" or "superclass", and the class that inherits is called the "derived" or "subclass".
`
`Polymorphism means "many shapes". In OOP, it refers to the ability of different classes to be treated as instances of the same class through inheritance. 
`The most common use of polymorphism is when a parent class reference is used to refer to a child class object. It allows one interface to be used for a general class of actions. 
`Polymorphism simplifies the code and enhances its maintainability and scalability.
`
`Abstraction is the concept of hiding the complex implementation details and showing only the necessary features of an object. 
`This means that the user interacts only with the relevant information, making it simpler to interact with objects. 
`Abstraction lets you focus on what an object does instead of how it does it.

SOLID S::Single-responsibility principle:: There should never be more than one reason for a class to change. In other words, every class should have only one responsibility.
SOLID O::Open-closed principle:: "Software entities ... should be open for extension, but closed for modification.
SOLID L::Liskov substitution principle:: Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it.See also design by contract.
SOLID I::Interface segregation principle:: Clients should not be forced to depend upon interfaces that they do not use.
SOLID D::Dependency inversion principle:: Depend upon abstractions, not concretions. not knew by me.





sdk :: software development kit :: 
`Purpose: Development of .NET applications.
`Components: Compilers, tools (like dotnet CLI), libraries for building applications.
`Capabilities: Creating, building, and publishing .NET applications.
`Includes: .NET Runtime and ASP.NET Core Runtime components.
