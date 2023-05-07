#!/usr/bin/env ruby
#script finds pattern that repeat "t" a min of 2 times and max of 5

puts ARGV[0].scan(/hbt{2,5}n/).join
