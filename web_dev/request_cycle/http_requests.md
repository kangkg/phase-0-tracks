# Ken's HTTP REQ
# What are some common HTTP status codes?
    Status codes can represent warnings, and other information.
    200 = OK, no problems (there's others but this is the 'best' one)
    404 = Not found
    Chrome will highlight rows with errors.
    Status codes fall into classes: informational (1xx), success (2xx), redirection (3xx), client errors (4xx), server errors (5xx).

# What is the difference between a GET request and a POST request? When might each be used?
    'So essentially GET is used to retrieve remote data, and POST is used to insert/update remote data.'
    'POST and GET are two HTTP request methods. GET is usually intended to retrieve some data, and is expected to be idempotent (repeating the query does not have any side-effects) and can only send limited amounts of parameter data to the server. GET requests are often cached by default by some browsers if you are not careful. 
    POST is intended for changing the server state. It carries more data, and repeating the query is allowed (and often expected) to have side-effects such as creating two messages instead of one.'

# Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
    Wikipedia: A cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.