#Library to create a multiplication table of prime numbers

## Quick Start Guide
A simpel solution for kata eight problem  (http://codekata.pragprog.com/2007/01/kata_eight_conf.html)

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
ruby kata_extendable.rb
```
The above command will call both the readable and fast version of the solution.
The extendable version leverages the Strategy pattern, so that in the future any possible matcher can be added,
with no need to modify the Matcher class



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
