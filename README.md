DataMapper+MySQL study
======================

* Mac OSX Lion
* Ruby 1.8.7+
* MySQL 5.1+
* SQLite3 3.7+


Install Dependencies
--------------------

    % gem install bundler
    % bundle install


Setup
-----

    % cp sample.config.yml config.yml
    % mysql -u your_name -p
    mysql> create database study;

    % ruby bin/db_migrate.rb


Use
---

write

    % ruby -Ku bin/post_comment.rb test

read

    % ruby -Ku bin/show_comments.rb


Console
-------

    % ruby -Ku bin/console.rb