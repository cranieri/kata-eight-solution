#Ruby Solution for the Kata Eight problem

## Quick Start Guide
A simple solution for the kata eight problem  (http://codekata.pragprog.com/2007/01/kata_eight_conf.html)

```ruby
ruby kata_fast.rb
```
The above command will print out the matches from the file WordList.txt. That is the 'fast' version of the solution.
About 40% faster than the readable version


```ruby
ruby kata_readable.rb
```
The above command will print out the matches from the file WordList.txt, after executing the 'readable' solution of the problem


```ruby
ruby kata_extendible.rb 6
```
The above command will call the extendible version of the solution.
The extendible version gives the chance to specify a number of letters you want the word to be composed of.

```ruby
ruby kata_matcher.rb
```
Will run the readable, fast version and show how to dinamically change 'match finder', by leveraging the Matcher class.

## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0

If something doesn't work on one of these interpreters, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be responsible for providing patches in a timely
fashion. If critical issues for a particular implementation exist at the time
of a major release, support for that Ruby version may be dropped.


## Copyright
Copyright (c) 2013 Cosimo Ranieri.
