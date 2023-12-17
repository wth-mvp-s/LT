info.vue2.routes

Yes, you're correct. In Vue Router, params and query have distinct behaviors:

params:
    {
        path: '/user/:id',
        name: 'user-profile',
        component: UserProfile
    }

    They appear in the URL path. For example, if you have a route path defined as /user/:id, navigating to /user/123 would mean id param is 123.
    They are typically used for dynamic segments of your route, like IDs or names.
    They won't be preserved when navigating away unless you've configured your route with a props function that derives prop values from the route's params.
    If you attempt to push a route with params that aren't defined in your route configuration, they'll just be ignored.

query:
    {
        path: '/search',
        name: 'search',
        component: SearchComponent
    }
    They appear after the ? in a URL, like /search?query=something.
    They are preserved when navigating (depending on router mode and configuration).
    You can think of them as equivalent to GET parameters in a traditional URL.²