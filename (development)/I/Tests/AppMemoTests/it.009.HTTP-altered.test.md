it.010.HTTP-altered.test

- **OK**, The request has succeeded. :: 200
- **Created**, The request has been fulfilled, resulting in a new resource. :: 201
- **Accepted**, The request has been accepted for processing, but processing is not completed. :: 202
- **Non-Authoritative Information**, The server is returning information from another source. :: 203
- **No Content**, The server processed the request but is not returning any content. :: 204


- **Moved Permanently**, The resource has been moved to a new permanent URI. :: 301
- **Found**, The requested resource resides temporarily under a different URI. :: 302
- **See Other**, The response to the request can be found under a different URI. :: 303
- **Not Modified**, The resource has not been modified since the last request. :: 304



[//]- **Temporary Redirect**, The requested resource resides temporarily under a different URI. :: 307
[//]- **Permanent Redirect**, The request and all future requests should be repeated using another URI. :: 308


- **Bad Request**, The server cannot or will not process the request due to client error. :: 400
- **Unauthorized**, Authentication is required and has failed or not been provided. :: 401
- **Forbidden**, The server understood the request but refuses to authorize it. :: 403
- **Not Found**, The requested resource could not be found. :: 404

[//]- **Method Not Allowed**, The request method is not supported for the requested resource. :: 405
[//]- **Not Acceptable**, The requested resource is only capable of generating content not acceptable. :: 406
[//]- **Request Timeout**, The server timed out waiting for the request. :: 408
[//]- **Conflict**, The request could not be completed due to a conflict with the current state of the resource. :: 409
[//]- **Gone**, The resource requested is no longer available and will not be available again. :: 410

- **Internal Server Error**, The server encountered an unexpected condition that prevented it from fulfilling the request. :: 500
- **Not Implemented**, The server does not support the functionality required to fulfill the request. :: 501
- **Bad Gateway**, The server, while acting as a gateway or proxy, received an invalid response from the upstream server. :: 502
- **Service Unavailable**, The server is currently unable to handle the request due to a temporary overload or maintenance of the server. :: 503
- **Gateway Timeout**, The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server. :: 504

[//]- **HTTP Version Not Supported**, The server does not support the HTTP protocol version used in the request. :: 505
[//]- **Proxy Authentication Required**, The client must first authenticate with the proxy. :: 407
[//]- **Length Required**, The server refuses to accept the request without a defined Content-Length. :: 411
[//]- **Precondition Failed**, The server does not meet one of the preconditions that the requester put on the request. :: 412
[//]- **Too Many Requests**, The user has sent too many requests in a given amount of time ("rate limiting"). :: 429
