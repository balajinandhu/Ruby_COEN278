class Compress
	attr_reader :cmp_arr  #getter methods for compressed array and index arrays
	attr_reader :index

	def initialize(input)
		@index = Array.new()   #create array to store indices to compressed string array to represent original array
		tokens = input.split()  #split string to words
		@cmp_arr = tokens.uniq() #eliminate duplicates from string
		
		for i in 0..tokens.length()-1
			for j in 0..@cmp_arr.length()-1
				if(tokens[i]==@cmp_arr[j])    # loop over each word in original string and compressed array and store the indices when words match
					@index.push(j)
				end

			end
		end

	end
end
