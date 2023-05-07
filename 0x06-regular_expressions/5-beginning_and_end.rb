#!/usr/bin/env ruby
#script finds pattern that starts with h, ends with n, and must have a single
#character in between h and n. The character can be anything

puts ARGV[0].scan(/^h.n$/).join
