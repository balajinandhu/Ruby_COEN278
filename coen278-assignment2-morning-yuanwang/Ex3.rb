class CompressWithClass

	def initialize(input)
		CompressWithClass.compress(input)
	end

	def self.compress(input)   # class method to compress string
		@@index = Array.new()   # class variable to store indices to compressed string array to represent orig. string
		tokens = input.split()  # split string to words
		@@cmp_arr = tokens.uniq() # eliminate duplicates from string and store in class variable 
		
		for i in 0..tokens.length()-1
			for j in 0..@@cmp_arr.length()-1
				if(tokens[i]==@@cmp_arr[j])    # loop over each word in original string and compressed array and store the indices when words match
					@@index.push(j)
				end

			end
		end
	end
	def self.cmp_arr
		@@cmp_arr
	end

	def self.index
		@@index
	end
end