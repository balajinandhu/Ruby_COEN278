require './Ex1'
require './Ex2'
require './Ex3'
require './Ex4'
require './Ex5'

# Prob 1:  Enclose strings with sourrounding chars
puts "** Enclose string with chars ** "
test1 = WrapAround.new("<", ">", "I", "love", "you")
puts "New instance of WrapAround : " + test1.output.to_s 
test1.set("<", ">", "I", "love", "you", "very", "much")
puts "Reset instance variable with new values : " + test1.output.to_s 

def test1.reverse_instance
	self.output.reverse
end

puts "Reverse of the instance array is : " + test1.reverse_instance.to_s 
puts "\n \n"


# Prob 2: Compress
puts "** Compress the string with two arrays **"
puts 'Input string: "I love you but do you love me" '
c = Compress.new("I love you but do you love me")
puts "Compressed input : " + c.cmp_arr.to_s
puts "Indices of compressed array to represent original string : " + c.index.to_s 
puts "\n \n"

# Prob 3: Compress using class method and class instance variable
puts "** Compress the string with two arrays using Class Method and Class Instance Variables **"
puts 'Input string: "I love you but do you love me" '
c = CompressWithClass.new("I love you but do you love me")
puts "Compressed input elements are : " + CompressWithClass.cmp_arr.to_s
puts "Compressed indices of input array elements is : " + CompressWithClass.index.to_s 
puts "\n \n"

# Prob 4: Collect and Collect! versions
puts "** Re-implementing collect & collect! methods **"
collect = Array.new([1, 2, 3, 4, 5])
collect.my_collect{|x| x * 2 + 5}
collect.my_collect!{|x| x *2 + 5}
puts "\n \n"

# Prob 5: Using Enumerable Mix-in
puts "** Implementing Enumerable methods **"
m = Enumerablev2.new('I love you but do you love me')
puts "Re-Implementing each method... output is: "
m.eachv2{|a| print a + " ~ "}

puts "\nRe-Implementing reverse_each method... output is: " 
m.reverse_eachv2{|a| print a + " - "}
puts "\nRe-Implementing inject method... the largest word is: " + m.cmp_arr.inject{|temp, word| temp.length > word.length ? temp : word}.to_s  # inject method to find the longest word in the string
