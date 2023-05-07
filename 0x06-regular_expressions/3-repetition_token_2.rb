#!/usr/bin/env ruby
#script finds pattern that repeat "t" a min of 1 time and max of 4

puts ARGV[0].scan(/hbt{1,4}n/).join
