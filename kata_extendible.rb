#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '', 'lib')

require 'kata_extendible'

start_time = Time.now

num_of_words = ARGV[0] ?  ARGV[0].to_i : 6

k = KataExtendible.new(num_of_words)
matches = k.find_matches
tot_matches = matches ? matches.size : 0

puts "We found a total of #{tot_matches} matches with #{num_of_words} words"
puts "Running time: #{Time.now - start_time} seconds"
