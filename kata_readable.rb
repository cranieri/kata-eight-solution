#!/usr/bin/env ruby
$LOAD_PATH << File.join(File.dirname(__FILE__), '', 'lib')
require 'kata_readable'

p "Kata readable"

start_time = Time.now



kr = KataReadable.new
matches = kr.find_matches

matches.each do |match|
  p match
end

puts "We found a total of #{matches.size} matches"
puts "Running time: #{Time.now - start_time} seconds"