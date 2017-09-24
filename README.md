Instagram App
===============

A photo uploading website created with Ruby on Rails.

* Ruby version 2.4.0

Setup:
-------

```
$ git clone git@github.com:LizH90/instagram.git
$ cd Instagram
$ bundle install
$ brew install imagemagick
```

Database creation:
--------
I have used postgresql as the database, you will need to install this first if
you haven't already and then run this in the command line:

```
$ rake db:migrate
```

Tests:
-------

User Stories:
---------
```
As a provider
I would like users to be able to sign up
To view the website
```
```
As a provider
I would like users to be able to sign in and out
To keep their account private
```
```
As a user
I would like to be able to upload photos
So they are available for me and others to view at any time
```

Deployment:
-------
This can be found here:
