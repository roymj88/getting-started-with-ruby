#!/usr/bin/ruby
$LOAD_PATH << '.'
require "support"
 
class Decade
include Week
   no_of_yrs=10
   def no_of_months
      puts Week::FIRST_DAY
      number=10*12
      puts number
   end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
 
# Result
# Sunday
# You have four weeks in a month
# You have 52 weeks in a year
# Sunday
# 120

module Test 
#constant
PI = 3.14 
    #method
    def mul radius
        return PI*10*radius
    end
    #method
    def sub
        return PI-2
    end
 
    #Inheritance 
    def status(string)
        return string
    end
 
    class Demo 
        def jada
            return "Just a test"
        end
    end 
end
 
class Math2
    include Test     
    def div
        puts Demo.new.jada 
        puts mul 100       
    end
end
 
obj = Math2.new
obj.div