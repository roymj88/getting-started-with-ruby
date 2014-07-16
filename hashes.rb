#Reversing key value of a hash
basket = {:fruit=>"orange",:vegetable=>"carrot"};
basket1 = basket.invert;
puts basket1; 
basket2 = {} 
basket.each do |key,value|
    basket2[value]=key;
end
puts basket2;
