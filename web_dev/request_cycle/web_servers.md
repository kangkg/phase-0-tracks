
#What are some of the key design philosophies of the Linux operating system?
    'The creators of the Unix operating system started with a radical concept: they assumed that the user of their operating system would be computer literate from the start. The entire Unix philosophy revolves around the idea that the user knows what he or she is doing.'
    Some Important Tenets:
    1. Small is Beautiful
    2. Each Program Does One Thing Well
    3. Prototype as Soon as Possible

#In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
    'A VPS runs its own copy of an operating system, and customers have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS. For many purposes they are functionally equivalent to a dedicated physical server, and being software-defined, are able to be much more easily created and configured.'

#Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
    'Just one word: security.
    You're logged as root = all applications are running with root privileges -- every vulnerability in Firefox, Flash, OpenOffice etc. now can destroy your system, because possible viruses now have access everywhere. Yes, there are only few viruses for Ubuntu/Linux, but it's also because of good security and default unprivileged user.
    It's not only about viruses -- small bug in an application could erase some system files or...
    When your're logged as root, you can do everything -- the system won't ask! Do you want to format this disk? Ok, just one click and it's done, because you're root and you know what you're doing...


# Use dev tools to explore the DOM properties of an HTML element. Find at least five properties (in addition to the ones pointed out in the video) that might be interesting to change once the page is loaded, either because you have a good guess at what they do, or because you're curious about what they do.
    addEventListener
    hasOwnProperty
    get childElementCount
    get classList
    element.className
      see: http://www.w3schools.com/jsref/dom_obj_all.asp 