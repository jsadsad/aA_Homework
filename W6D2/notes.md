# What is Rails

API - Application Programming Interface.

API is the published set of rules for how a particular software works.

# HTTP-Request-Response

1. Client sends a request. It has to have a method and path

2. It _CAN_ have a query or a body.

# Rails Routing

The first thing the HTTP request hits in the server is the _router_. The router will check the path and the method.

If the router finds one that matches, it initializes a _controller_. It will then `call` the right action.

# Recap

1. The controller can render or redirect, but not both.
2. The controller's name is conventionally pluralized.
3. The controller lives for only one request response cycle.
4. The CatsController is _NOT_ the only controller that can access the Cat model. Active Record allows us to access the Cat model in multiple controllers.

5. `root to: 'bicycles#index'` if added to config/routes.rb, would cause the root url (i.e. "/") to run the BicyclesController's index method when visited.
6. Proper Rails syntax is essential! Always feel free to visit the Rails documentation is you ever are unsure of the syntax to implement something.

7. The key value pairs in the params hash come from Query String, the path of the request, and form data from a post/patch/put request.

8. The server returned a blank form for creating a cat. Assuming RESTful Routes, which request did I make? _HTTP Verb: GET Path: /cats/new_

9. If you are requesting a new form you'd be making GET request. Since this request would lead to a new cat being made then Rails convention dictates the path would be /cats/new.

10. Assuming RESTful routes, a GET request to /magazines/:magazine_id/articles would do which of the following? _Call the index action of the ArticlesController with magazine_id as a key in the params hash_.
11. Since the last piece of the URL is plural and this is a GET request we can assume we are hitting the index action on the matching controller (in this case articles). Then looking at the rest of the URL we can see the :magazine_id meaning we are passing a magazine_id as a key in the params hash as part of this request.
