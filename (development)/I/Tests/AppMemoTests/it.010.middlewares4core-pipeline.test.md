it.011.middlewares4core-pipeline.test

Serves default files like 'index.html' as the landing page :: UseDefaultFiles
Enables the serving of static files from directories like 'wwwroot' :: UseStaticFiles
Activates routing to map incoming requests to appropriate endpoints :: UseRouting
Applies CORS policies for cross-origin requests :: UseCors
Integrates authentication services to manage user identity :: UseAuthentication
Ensures users have necessary permissions for access :: UseAuthorization
Configures endpoints for the HTTP request pipeline :: UseEndpoints

[//]Adds middleware for handling exceptions in a web app :: 'app.UseExceptionHandler("/Error")'
[//]Redirects HTTP requests to HTTPS for security :: 'app.UseHttpsRedirection()'
[//]Adds support for real-time web functionalities :: 'app.UseSignalR(routes => {...})'
[//]Enables session state for the application :: 'app.UseSession()'
[//]Adds middleware for HTTP request logging :: 'app.UseRequestLogging()'
[//]Enables response compression for efficiency :: 'app.UseResponseCompression()'
[//]Adds middleware for serving response caching :: 'app.UseResponseCaching()'
[//]Integrates localization functionalities for global apps :: 'app.UseRequestLocalization()'
[//]Configures custom middleware in the pipeline :: 'app.UseMiddleware<CustomMiddleware>()'
[//]Enables Health Checks for monitoring app health :: 'app.UseHealthChecks("/health")'
[//]Adds support for WebSocket communication :: 'app.UseWebSockets()'
[//]Enables request rate limiting and throttling :: 'app.UseRateLimiting()'
[//]Adds support for serving Blazor WebAssembly files :: 'app.UseBlazorFrameworkFiles()'
[//]Configures IIS integration for hosting in IIS :: 'app.UseIIS()'
[//]Integrates the HSTS security feature :: 'app.UseHsts()'
[//]Adds support for serving gRPC services :: 'app.UseGrpc()'
[//]Enables API versioning support :: 'app.UseApiVersioning()'
[//]Adds middleware for custom URL rewriting :: 'app.UseRewriter(new RewriteOptions())'
[//]Supports serving SPA (Single Page Application) files :: 'app.UseSpa(spa => {...})'
[//]Integrates Swagger UI for API documentation :: 'app.UseSwaggerUI(c => {...})'
[//]Enables automatic request localization :: 'app.UseRequestLocalizationAuto()'
[//]Adds support for server-sent events :: 'app.UseServerSentEvents()'
[//]Integrates OAuth2 authentication support :: 'app.UseOAuthAuthentication()'