#!/usr/bin/env ruby
#script finds pattern that matches either htn or hbtn. The question mark
#makes the expression it precedes, in this case "b" not compulsory

puts ARGV[0].scan(/hb?tn/).join
