Kimoop 
    def
    problem solving 
    how not true

A
    o types
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


 C#, structs are inherently immutable (can't be changed after creation). 