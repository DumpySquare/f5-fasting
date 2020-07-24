# f5-fasting

The purpose of this repo is to collect and document the authoring of templates and use of F5 FAST service.

Each folder should have a README to document it's purpose

Repo to build fast templates, demos and documentation

Use... Build... Contribute!!!

---

### Documentation

- https://github.com/F5Networks/f5-appsvcs-templates
- https://github.com/f5devcentral/f5-fast-core
- https://clouddocs.f5.com/products/extensions/f5-appsvcs-templates/latest/

### Mustache

All the following link together at some point but are the foundation of mustache

- http://mustache.github.io/
- http://mustache.github.io/mustache.5.html
- http://mustache.github.io/mustache.1.html
- https://github.com/janl/mustache.js


### How-Tos

- https://www.tsmean.com/articles/mustache/the-ultimate-mustache-tutorial/
- https://www.baeldung.com/mustache
- https://love2dev.com/blog/javascript-mustach-templates/
- http://coenraets.org/blog/2011/12/tutorial-html-templates-with-mustache-js/
- https://www.sitepoint.com/a-beginners-guide-to-handlebars/

### JSON Schema

Understanding JSON schema is important to understanding how FAST templates are formed, schemas are referenced and discovered:

- https://json-schema.org/understanding-json-schema/

### if your interested... mustache vs handlebars...

- Seems that mustache was chosen for it's "dead simple templating" or logic-less templating, handlebars can get rather complex with some of it's logic features
- jinja templates are the python version of handlebars
- https://medium.com/@_JuanGallo/mustache-vs-handlebars-42e531eca252
- https://stackoverflow.com/questions/10555820/what-are-the-differences-between-mustache-js-and-handlebars-js#:~:text=Mustache%20is%20missing%20helpers%20and,introducing%20logic%20into%20your%20templates.&text=Handlebars%20began%20in%20JavaScript%2C%20now,like%20django%2Dhandlebars%2C%20handlebars.

### more reading

- https://itnext.io/why-i-moved-to-es6-template-strings-from-mustache-handlebars-573f6f2c713b
- https://www.sitepoint.com/overview-javascript-templating-engines/

### ideas:

- github issue/RFE - expose "deploy" tab views through API 
    - Under the "Deploy" tab of the FAST GUI, there are four buttons along the bottom next to the submit button, it would be nice if those functions were exposed via the API
        - "View Rendered" - Would allow a user to see what the fast template will produce programatically without actually deploying anything.  This would be extremely helpful for development, testing, and troubleshooting.
        - "View Inputs" - Would also help show users and programs quickly and easily understand what parameters are needed to deploy the application
        - "View Schema" - Would help template authors understand how FAST is interpreticing the template during authoring and provide some insight to a deeper understanding and use of FAST templates
        - "View Template" - Could be an easy way for a user to programatically see just the template and nothing else
    - https://github.com/F5Networks/f5-appsvcs-templates/issues/15


- github issue/RFE - support direct file references and url references in template params
    - this would allow irules, certificates and other objects (even the actual template) to be referenced in thier respective files, allowing editing of each element way easier.
    - or hosting of pieces/secrets in a vault
    - https://github.com/F5Networks/f5-appsvcs-templates/issues/16