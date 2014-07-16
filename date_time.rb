#Print current date in a particular format
require 'active_support/core_ext/integer/inflections';
t = Time.now
t = t.strftime("Today is %A, #{t.day.ordinalize} of %B, %Y")
puts t;