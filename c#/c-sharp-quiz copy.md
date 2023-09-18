## C# edited

#### Q1::
In which of these situations are interfaces better than abstract classes?
::
`In C#, interfaces have been able to define properties since the beginning, from C# 1.0. However, it's essential to understand that while interfaces can define properties, they cannot hold state
`
`classes-agnostic mean independent from, 

- [ ] When you need to define an object type's characteristics, use an interface. When you need to define an object type's capabilities, use an abstract class.
- [ ] Interfaces are a legacy of older versions of C#, and are interchangeable with the newer abstract class feature.
- [x] When you need a list of capabilities and data that are classes-agnostic, use an interface. When you need a certain object type to share characteristics, use an abstract class.
- [ ] You should use both an interface and an abstract class when defining any complex object.


#### Q2.::
`Which statement is true of delegates?
`::
`**Reference** [Official documentation: Delegates](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/delegates/#delegates-overview)
`- Delegates allow methods to be passed as parameters.
`- Delegates can be used to define callback methods.
`- Delegates can be chained together; for example, multiple methods can be called on a single event

- [ ] Delegates are not supported in the current version of C#
- [ ] They cannot be used as callbacks.
- [ ] Only variables can be passed to delegates as parameters.
- [x] They can be chained together.

