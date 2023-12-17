##   cg.test.cs.1910

#### 001::
`public interface A : 8, C, D {} 
`Cette interface est correcte si B, C et D sont également des interfaces. 

- [ ] Faux 
- [x] Vrai 

#### 002::
`int i1 = 5; 
`int i2 = 2; 
`int 13 = i1 / i2; 
`
`Quelle est la valeur de i3 ? 
`::
`Note : En C#, la division entre deux nombres entiers renvoie un entier. La partie fractionnaire est tronquée.


- [ ] NaN 
- [x] 2 
- [ ] 3 
- [ ] 2.5 

#### 003::
`
`class A 
`    { 
`        private string str;
`    }
`
`class B : A 
`{} 
`
`str est visible depuis B ...
`::
`Note : Les membres marqués comme private dans une classe ne sont pas visibles dans les classes dérivées.

- [x] Faux 
- [ ] Vrai 


#### 004::
`Pour communiquer avec une machine via TCP/IP, on peut utiliser la ou les classes...
`::
`Note : La classe Socket est utilisée en C# pour la communication réseau à bas niveau via TCP/IP. 
`Les autres options ne sont pas des classes standard en C# pour ce genre de communication.
- [ ] InternetSocket 
- [ ] DatagramSocket 
- [x] Socket 

#### 005::
`Vous réalisez une bibliothèque en C#. Parmi ces options, laquelle privilégiez-vous pour traiter un comportement inattendu ? 
`::
`Note : Lors de la création d'une bibliothèque, 
`il est préférable de lever une exception pour signaler un comportement inattendu. 
`Cela permet aux consommateurs de la bibliothèque de gérer l'exception de la manière qu'ils jugent appropriée.

- [x] throw new ComportementInattenduException() 
- [ ] return false 
- [ ] Console.WriteLine('Erreur: Comportement inattendu') 
- [ ] System.Environment.Exit(-1); 

#### 006::
`Les abstractions ne doivent pas dependre de details. Les details doivent dependre d'abstractions. 

- [ ] Faux 
- [x] Vrai 

#### 007::
`A quoi sort le modificateur d'acces 'private protected' quand il est placé sur un 
`membre dune classe ? 

- [ ] II restreint l'acces de ce membre aux membres de la meme classe ou de ses sous-classes ou des classes qui font partie du meme assembly que la classe 
- [ ] II restreint l'acces de ce membre aux membres du meme assembly 
- [ ] II restreint l'acces de ce membre aux membres de la meme classe 
- [ ] II restreint l'acces de ce membre aux membres de la meme classe ou de ses sous-classes 
- [ ] Ce modificateur n'est pas valide en C# 
- [x] II restreint l'acces de ce membre aux membres de la meme classe ou de ses sous-classes, mais seulement si la sous-classe fait partie du meme assembly que la classe 

#### 008::
`Comment un parametre "out" peut-il etre utilise en C#? 
`Plusieurs reponses attendues. 
`::
`int.TryParse(str, out num) : C'est correct si num a été préalablement déclaré.
`
 `int.TryParse(str, out int num) : C'est correct et c'est un exemple de déclaration inline où num est déclaré au moment où il est passé comme paramètre out.

- [x] int.TryParse(str, out num)
- [ ] int.TryParse(str, int num out)
- [ ] int.TryParse(str, num out)
- [x] int.TryParse(str, out int num)


#### 009::Quelle est la meilleure facon de declarer un parametre "out" qui ne sera pas utilise ? 

- [x] isParsed = int.TryParse("1", out _); 
- [ ] isParsed = int.TryParse("1", out int unused); 
- [ ] isParsed ,.TryParse("1", _ out); 
- [ ] isParsed = int.TryParse("1", _); 
- [ ] isParsed = int.TryParse("1", out int _); 


#### 010::An abstract class can contain concrete methods. 
`::Une classe abstraite en C# peut contenir des méthodes concrètes (c'est-à-dire des méthodes avec une implémentation). Elle peut aussi contenir des méthodes abstraites, qui n'ont pas d'implémentation dans la classe abstraite mais doivent être implémentées par les classes dérivées non abstraites.

- [x] True 
- [ ] False 

#### 011::If two objects are equals then they should have the same hashcode. 
`::En C# (et en Java), si deux objets sont considérés égaux selon la méthode Equals, alors ils doivent retourner le même code de hachage via la méthode GetHashCode. 
`Cela est essentiel pour le bon fonctionnement des collections basées sur des hachages comme Dictionary ou HashSet.

- [ ] False 
- [x] True 


#### 012::lt class can have more than one parent class. 
`::En C#, une classe ne peut pas avoir plus d'une classe parente. 
`C# ne prend pas en charge l'héritage multiple des classes, 
`ce qui signifie qu'une classe ne peut hériter que d'une seule classe de base. 
`Toutefois, une classe peut implémenter plusieurs interfaces.

- [x] False 
- [ ] True 

#### 013::
`string s;
`
`What is the value of s ? 
`::
`If s is a class member, its value is null.
`
`If s is a local variable, it has no value until it is explicitly assigned.

- [ ] ""
- [ ] "\0"
- [x] null

#### 014::
`var m = new Dictionary<object, int>(); 
`var ol = new object(); 
`var o2 = 01; 
`m[o    1] = 1; 
`m[o2] = 2; 
`
`What is the value returned by m[o1] 

- [ ] 1 
- [x] 2 
- [ ] 3 
- [ ] null 

#### 015::
`Which C# type can only exist on the stack ? 
`::
`in C#, the type that can only exist on the stack is the ref struct. This is a special kind of value type introduced in C# 7.2 that is meant to be allocated on the stack and cannot be boxed to an object on the heap.
`This was introduced to provide a way to create a struct that enforces stack-only behavior to prevent the possibility of issues that could arise from heap allocation, such as unintended sharing and garbage collection overhead.


- [x] ref struct 
- [ ] class
- [ ] struct
- [ ] ref class

#### 016::
`Instructions Answer What is the name of this type of code construct in C#? 
`
`(number1, number2) numbers = (1, 3 );
`::
`The code construct shown here is a tuple. Tuples in C# are used to store a sequence of elements that can be of different types. The given code (number1, number2) numbers = (1, 3); initializes a tuple with two elements.

- [ ] list 
- [ ] class 
- [ ] array 
- [x] tuple 

#### 017::
`What kind of type is TheStruct and what is it primarily used for? 
`
`public struct TheStruct { 
`        public long variable1; 
`        public IntPtr variable2; 
`        public TheStruct2* variable3; 
`} 
`
`public struct TheStruct2 { 
`    public long variable1; 
`    public IntPtr variable2; 
`    public int variable3; 
`} 
`::
`TheStruct and TheStruct2 are both value types defined by the struct keyword in C#. They contain simple value types (long, IntPtr) and a pointer to another value type (TheStruct2*). In C#, value types are normally managed types, meaning they are managed by the .NET runtime's garbage collector.
`
`However, the presence of the pointer field (TheStruct2* variable3) suggests that TheStruct is intended to be used in an 'unmanaged' context, which typically implies interoperability with native code (such as calling functions in a C or C++ DLL from C#). This is because pointers are not tracked by the garbage collector and are a common feature in unmanaged code.
`
`Additionally, structs, whether managed or unmanaged, can be used for binary serialization, which is the process of converting an object into a binary stream for storage or transmission and then converting it back into an object later.

- [x] It is an unmanaged struct and it is used for interoperability with native code or binary serialization 
- [ ] It is a managed struct and it is used for binary serialization 
- [ ] It is an unmanaged struct and it is used for interoperability with native code 
- [ ] It is an unmanaged struct and it is used for binary serialization 
- [ ] This is invalid code in C# 
- [ ] It is a managed struct and it is used for interoperability with native code or binary serialization 


#### 018::In a base 2 system (binary), what is the value of 01 | 11
`::
`OR operation sets each bit to 1 if one of the two bits is 1. Here's how it works:

- [ ] 01 
- [x] 11 
- [ ] 00 
- [ ] 10 
- [ ] 100 

#### 018::What is the result of the binary AND operation 110 & 101?
`::
`Explanation: The AND operation compares each bit of the binary numbers and outputs a 1 only if both bits are 1.

- [x] 100 
- [ ] 111 
- [ ] 011 
- [ ] 100 
