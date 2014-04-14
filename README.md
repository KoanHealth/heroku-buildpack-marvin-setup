Heroku buildpack: Ruby
======================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for setting up the Ruby dependencies of Koan Health's hubot. 
It uses [Bundler](http://gembundler.com) for dependency management.
We need to: 
 - Install bundler
 - Clone our (private) deployment repo into a sub directory
 - Run the setup script in that repo

 The actual hubot application is going to be started by the node buildpack.  We are using David Dollar's [multibuildpack](https://github.com/ddollar/heroku-buildpack-multi) to manage multiple buildpacks.  

 For Hubot, our buildpack stack will be:
  - SSH
  - this pack
  - node

This is based on Heroku's Ruby build pack with lots of stuff removed.

Flow
----

Here's the basic flow of how the buildpack works:

* Installs bundler

* clones the Deployer repo
  * runs Bundler
    * installs binaries
      * installs node if the gem execjs is detected

* runs the setup script in that repo