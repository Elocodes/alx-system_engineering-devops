#!/usr/bin/env ruby
#script finds expression that matches exactly a 10 digit number. There can
#be no other character, including white space or dashes, before, in the middle
#or after digits

puts ARGV[0].scan(/^\d{10}$/).join
