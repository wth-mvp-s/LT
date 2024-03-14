##   it.005.REST.perf.securite.test

## test-qcm-multi

#### 001::Which HTTP method should be idempotent and safe according to the REST standard?
- [x] GET
- [ ] POST
- [ ] PATCH
- [ ] DELETE

#### 002::What is the purpose of the `[Authorize]` attribute in ASP.NET Core?
- [x] It enforces authorization on an action method or controller.
- [ ] It encrypts the response data.
- [ ] It creates a new user account.
- [ ] None of the above.

#### 003::What does Entity Framework (EF) use to map classes to database tables?
- [x] DbContext
- [ ] HttpClient
- [ ] Middleware
- [ ] IActionResult

#### 004::How can you improve performance in Entity Framework?
`::
`Using Eager Loading: This can indeed improve performance in certain scenarios. Eager loading in Entity Framework means that the related data is loaded from the database as part of the initial query. This can be more efficient than lazy loading in scenarios where you know you will need related data for every entity retrieved.
`
`Using AsNoTracking: This can improve performance in situations where you're only reading data from the database and not updating it. AsNoTracking tells Entity Framework not to keep track of changes to the data, which reduces overhead.
`
`Disabling automatic change detection: This can enhance performance, especially in scenarios with large numbers of entities. Automatic change detection, which is part of the change tracking process of Entity Framework, can be resource-intensive.

- [x] By using Eager Loading, AsNoTracking, and disabling automatic change detection.
- [ ] By using Lazy Loading for all navigation properties.
- [ ] By turning off database indexing.
- [ ] None of the above.

#### 005::What should you do to secure sensitive data like connection strings in ASP.NET Core?
- [x] Use Secret Manager or Azure Key Vault in production.
- [ ] Store them in plain text in the appsettings.json file.
- [ ] Store them in the source code.
- [ ] None of the above.

#### 006::What should be the primary goal when creating a RESTful API?
- [x] The API should adhere to stateless, cacheable, and client-server principles.
- [ ] The API should use only POST requests.
- [ ] The API should return data only in XML format.
- [ ] None of the above.

#### 007::What does CORS (Cross-Origin Resource Sharing) do in ASP.NET Core?
- [x] It provides a way to use resources from domains outside of the current origin.
- [ ] It prevents any resources from being used outside of the current origin.
- [ ] It converts resources to a format suitable for sharing across domains.
- [ ] None of the above.

#### 008::What can you do to improve the performance of a REST API built with ASP.NET Core?
- [x] Use response caching, efficient data structures, and optimize database queries.
- [ ] Use synchronous methods for all actions.
- [ ] Avoid using any kind of caching mechanism.
- [ ] None of the above.

#### 009::What is the purpose of Data Transfer Objects (DTOs) in a REST API?
- [x] To prevent over-posting attacks and to decouple your service layer from your database layer.
- [ ] To create a direct map between your database schema and your client's requests.
- [ ] To add extra weight to your application.
- [ ] None of the above.

#### 010::What is an over-posting attack?
- [x] An attack where an attacker attempts to post additional fields that they should not have access to.
- [ ] An attack where an attacker attempts to overwhelm the server by sending a large number of POST requests.
- [ ] An attack where an attacker posts irrelevant data to the server.
- [ ] None of the above.

#### 011::What is CSRF attack?
- [x] It is an attack that forces an end user to execute unwanted actions on a web application in which they're authenticated.
- [ ] It is an attack where the attacker steals user data.
- [ ] It is an attack where the attacker disrupts the normal functioning of the app.
- [ ] None of the above.

#### 012::How does EF Core improve performance with tracking queries?
- [x] It can reduce memory usage and increase application speed by not tracking changes in the DbContext that aren't needed.
- [ ] It constantly tracks all queries to ensure they are running at optimal performance.
- [ ] It improves performance by tracking and re-running inefficient queries.
- [ ] None of the above.

#### 013::What's the purpose of the 'Middleware' in ASP.NET Core?
- [x] It's software that handles an HTTP request and response.
- [ ] It's software that only handles HTTP responses.
- [ ] It's software that only handles HTTP requests.
- [ ] None of the above.

#### 014::What's the primary purpose of the 'IActionResult' return type in an ASP.NET Core controller?
- [x] It provides a way to return different HTTP status codes from the action methods.
- [ ] It ensures that the action methods always return data in JSON format.
- [ ] It allows the action methods to return multiple values.
- [ ] None of the above.

#### 015::In Entity Framework, what does the term 'lazy loading' mean?
- [x] It's a concept where navigation properties are loaded automatically when the property is accessed for the first time.
- [ ] It means that the properties of an entity will be loaded before they are requested.
- [ ] It's a process where the properties of an entity are never loaded until explicitly asked for.
- [ ] None of the above.

#### 016::What does the "virtual" keyword do in Entity Framework?
- [x] It enables lazy loading for that property.
- [ ] It makes the property invisible to the DbContext.
- [ ] It enforces that the property must be overridden in any derived class.
- [ ] None of the above.

#### 017::Which LINQ method results in a SQL query being sent to the database in EF Core?
- [x] .ToList()
- [ ] .Where()
- [ ] .Select()
- [ ] None of the above.

#### 018::Which type of injection attack can Entity Framework protect you against?
- [x] SQL Injection
- [ ] XSS (Cross-site scripting)
- [ ] CSRF (Cross-site request forgery)
- [ ] None of the above.

#### 019::What can you use to add security headers to your ASP.NET Core application?
- [x] Middleware
- [ ] Entity Framework
- [ ] The HTTPClient class
- [ ] None of the above.

#### 020::How can you prevent replay attacks in your ASP.NET Core application?
- [x] By using anti-forgery tokens.
- [ ] By using plain text HTTP.
- [ ] By disabling authentication.
- [ ] None of the above.

#### 021::What is one benefit of using asynchronous programming in ASP.NET Core?
- [x] It can improve scalability by freeing up the thread to take on other requests while waiting for a task to complete.
- [ ] It increases the amount of memory used by the application.
- [ ] It decreases the number of requests that can be handled simultaneously.
- [ ] None of the above.

#### 022::How can you handle errors globally in ASP.NET Core?
- [x] By using exception handling middleware.
- [ ] By wrapping each action method in a try/catch block.
- [ ] By using the HttpClient class.
- [ ] None of the above.

#### 023::What should you use to store sensitive data for your ASP.NET Core application in a production environment?
- [x] Azure Key Vault
- [ ] appsettings.json file
- [ ] Source code
- [ ] None of the above.

#### 024::In a REST API, what does the status code 200 mean?
- [x] The request was successful.
- [ ] The request was not found.
- [ ] The request was unauthorized.
- [ ] None of the above.

#### 025::In Entity Framework, what is the impact of using the "AsNoTracking" method?
- [x] It improves performance by telling EF Core to not track changes on the returned entities.
- [ ] It makes the DbContext track all changes twice.
- [ ] It makes the DbContext disregard any changes made to the entities.
- [ ] None of the above.

#### 026::What does the "Include" method do in Entity Framework Core?
- [x] It allows you to specify related data to be included in query results (Eager Loading).
- [ ] It includes the DbContext in the response.
- [ ] It includes the HttpClient in the response.
- [ ] None of the above.

#### 027::What is a benefit of using DTOs (Data Transfer Objects) in your API?
- [x] They can help prevent over-posting attacks.
- [ ] They increase the complexity of your application.
- [ ] They make the application harder to test.
- [ ] None of the above.

#### 028::Which of the following HTTP methods is not idempotent?
- [x] POST
- [ ] GET
- [ ] DELETE
- [ ] PUT

#### 029::How can you improve the performance of your ASP.NET Core REST API?
- [x] By using caching, pagination, and asynchronous programming.
- [ ] By using only synchronous programming.
- [ ] By avoiding any form of caching.
- [ ] None of the above.

#### 030::Which protocol can you use to secure your ASP.NET Core REST API?
- [x] OAuth 2.0
- [ ] SMTP
- [ ] FTP
- [ ] None of the above.