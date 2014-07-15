#Initialization of arrays
array = [1,2,3,4,5,6,7,8,9];
odd = []; even = []; odd1 = []; even1 =[]; odd2 = []; even2 =[];odd3 = []; even3 = [];odd4 = []; even4 = [];

#Method 1 - Using Each Loop
array.each do|i|
    if(i%2==0)
        even << i;
    elsif (i%2==1)
        odd << i;
    end
end
puts "First Method using 'each'";
puts "Main Array : "+ "#{array.inspect}";
puts "Odd : " + "#{odd.inspect}";
puts "Even : "+ "#{even.inspect}";
 


 
#Method 2 - Using Collect Loop
array.collect do|i|
    even1 << i if(i%2==0);
    odd1 << i unless !(i%2==0);
end
puts "Second Method using 'collect'";
puts "Main Array : "+ "#{array.inspect}";
puts "Odd : " + "#{odd1.inspect}";
puts "Even : "+ "#{even1.inspect}";
