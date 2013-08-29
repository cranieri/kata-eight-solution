#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '', 'lib')
require 'matcher'
require 'kata_fast'
require 'kata_readable'

p "Kata extendable"

start_time = Time.now

p "Calling the faster version..."
ke = Matcher.new(KataFast.new)
matches = ke.find_matches


puts "We found a total of #{matches.size} matches"
puts "Running time: #{Time.now - start_time} seconds"

p "Calling the readable version..."


ke.matcher = KataReadable.new
matches = ke.find_matches
puts "We found a total of #{matches.size} matches"
puts "Running time: #{Time.now - start_time} seconds"
