# #list 1
# puts true    ? "true" : "false" 
# puts false   ? "true" : "false" #only this is false 
# puts nil     ? "true" : "false" # and this
# puts 1       ? "true" : "false"
# puts 0       ? "true" : "false"
# puts "false" ? "true" : "false"
# puts ""      ? "true" : "false"
# puts []      ? "true" : "false"

# # List 2
# val1 = true and false  #true
# val2 = true && false   #false

# #list3

# def sum(arg1, arg2);
#   puts arg1 + arg2;
# end

# sum 1, 2
# sum(1, 2)
# sum (1, 2) #only this will produce an error 

# foo classes 

VAL = 'Global'
 
module Foo
  VAL = 'Foo Local'
 
  class Bar
    def value1
    VAL
    end
  end
end
 
class Foo::Bar
  def value2
    VAL
  end
end

puts Foo::Bar.new.value1
puts Foo::Bar.new.value2