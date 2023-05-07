#!/usr/bin/env ruby
#script finds pattern that repeat "t" a min of 1 time and max of 4.
#However, t is not compulsory and a pattern like hbn should be returned too

puts ARGV[0].scan(/hbt*n/).join
