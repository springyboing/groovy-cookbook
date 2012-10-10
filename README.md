Description
===========

Installs Groovy.  Downloads zip distribution and installs.  

Requirements
============

* Chef 0.10.0+
* Java

Platform
========

* Ubuntu

Tested on:

* Ubuntu 10.04-12.04

Cookbooks
=========
 
Requires java cookbook.

Attributes
==========

See the `attributes/default.rb`.  But here are the important ones:

* `node['groovy']['version']` - Groovy version to download and install
* `node['groovy']['install_path']` - Location to install to
* `node['groovy']['owner']` - Owner of the installed Groovy download

Usage
=====

On client nodes, use the default recipe:
 
    { "run_list": ["recipe[groovy]"] }
