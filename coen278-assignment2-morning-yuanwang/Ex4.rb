class Array

	def my_collect(&block)  # re-implementing collect
		@arr = Array.new()  # array to store values returned by block
		self.each do |item|  # iterate over each item in the array
			@arr.push(yield(item))  # pass the item to block and store the return value in arr
		end
		puts "Input array is(self) : " + self.to_s
		puts "Output array is : " + @arr.to_s
	end

	def my_collect!(&block)  # re-implementing collect!
		puts "Before running my_collect! input array is (self) :" + self.to_s
		self.replace(@arr) # replace the output array with the output from collect
		puts "After running my_collect! input array is (self) : " + self.to_s
		puts "Output array is : " + @arr.to_s
	end
end

