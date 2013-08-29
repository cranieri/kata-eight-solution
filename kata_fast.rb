#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '', 'lib')
require 'kata_fast'

p "Kata fast"

start_time = Time.now



kr = KataFast.new
matches = kr.find_matches

matches.each do |match|
  p match
end

puts "We found a total of #{matches.size} matches"
puts "Running time: #{Time.now - start_time} seconds"