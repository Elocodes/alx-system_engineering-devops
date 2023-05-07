#!/usr/bin/env ruby
#script matches only capital letters found in a sentence and displays
#them without any spaces in between

puts ARGV[0].scan(/[A-Z]+/).join
