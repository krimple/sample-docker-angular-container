Here's how to use this in Docker:

      docker build -t yourname/node-dev:0.1 .
      docker run -i -t --rm -p 3000:3000 -p 35729:35729 -v `pwd`:/src 
yourname/node-dev:0.1

You'll get a /src directory in your Docker, which corresponds to this
git repo.  You'll get a docker ssh # prompt, which means you're using
the Root account in your docker container. That's fine.

Then, in the docker container, do an `grunt serve` to fire up the web
server, which I've configured to run on port `3000` and opened up the
livereload port of `35729` so it will livereload every time you save a
change to the files locally.

This is just using the `yo angular` yeoman script to build a simple
angularjs app, but the implications of this style of development are
enourmous - just install Docker (or boot2docker on Windows or OS X) and
do the two commands above and you have an instant dev environment, just
add water.


