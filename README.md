---
tags: activerecord, orm, oop
languages: ruby
---

# Active Record CRUD

## Description

In this lab, you'll be playing around with the basic CRUD features of Active Record. There are many ways to make the specs pass...experiment!

## Instructions

As usual, the first thing you should do (after reading this README, of course) is run `rspec` from your command line. In roughly this order, make all the specs pass:

1. Create a `Movie` model in `app/models/movie.rb`. You'll want this model to inherit from `ActiveRecord::Base`.
2. Write a migration to create the 'movies' table in `db/migrations`
3. Note: It may be helpful to read through `spec/models/movie_spec.rb` to figure out what columns you need to create in your migration file.
4. Move through the specs, filling in the `__` with code that makes them pass. Pay very close attention to the language in the test descriptions. If a test uses the word "create", for instance, it is probably asking you to use a `create` method somewhere in that test.
5. Each set of `__` represents one line of code that you need to add to your specs. Add exactly as many lines of code that are asked for.
6. One test, in particular, will be a bit tricky! You'll want to read up on the [Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html).
7. The last spec you'll be asked to make pass is one that tests a `db:seed` Rake task. When working with databases, it's often nice to be able to seed, or prep, our database with data. There are a zillion ways to create this seed data, but for this test suite we'll be using a file in `apec/fixtures` called `seed_data.yml`. Take a look at it. Not too difficult to read, right?

  You'll need to define a rake task, `:seed` in the `db` namespace in the `Rakefile` in this project. You can parse through the YAML file however you'd like, but the easiest way to do it will be to use the [YAML::Store](http://ruby-doc.org/stdlib-2.1.0/libdoc/yaml/rdoc/YAML/Store.html) module from Ruby. Read through the documentation, it gives a pretty good example of how you might use it.