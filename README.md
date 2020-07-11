# f5-fasting

The purpose of this repo is to collect and document the authoring of templates and use of F5 FAST service.

Each folder should have a README to document it's purpose

Repo to build fast templates, demos and documentation

Use... Build... Contribute!!!

## Main FAST links

- https://github.com/F5Networks/f5-appsvcs-templates
- https://github.com/f5devcentral/f5-fast-core

### all the following link together at some point but are the foundation of mustache
- http://mustache.github.io/
- http://mustache.github.io/mustache.5.html
- http://mustache.github.io/mustache.1.html
- https://github.com/janl/mustache.js


### Best tutorial
- https://www.tsmean.com/articles/mustache/the-ultimate-mustache-tutorial/
- https://www.baeldung.com/mustache
- https://love2dev.com/blog/javascript-mustach-templates/
- http://coenraets.org/blog/2011/12/tutorial-html-templates-with-mustache-js/
- https://www.sitepoint.com/a-beginners-guide-to-handlebars/

### if your interested... mustache vs handlebars...
- https://medium.com/@_JuanGallo/mustache-vs-handlebars-42e531eca252
- https://stackoverflow.com/questions/10555820/what-are-the-differences-between-mustache-js-and-handlebars-js#:~:text=Mustache%20is%20missing%20helpers%20and,introducing%20logic%20into%20your%20templates.&text=Handlebars%20began%20in%20JavaScript%2C%20now,like%20django%2Dhandlebars%2C%20handlebars.

### more reading
- https://itnext.io/why-i-moved-to-es6-template-strings-from-mustache-handlebars-573f6f2c713b
- https://www.sitepoint.com/overview-javascript-templating-engines/

## ideas:

- github issue/RFE - provide "renderOnly" parameter
    - this would be a paramter at app post what would just respond with rendered template and not actually deploy app


- github issue/RFE - support direct file references and url references in template params
    - this would allow irules, certificates and other objects (even the actual template) to be referenced in thier respective files, allowing editing of each element way easier.
    - or hosting of pieces/secrets in a vault