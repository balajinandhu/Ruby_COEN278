require './Ex2'   # include problem 2
class Enumerablev2 < Compress  # subclass Compress class
	include Enumerable # mix-in Enumerable module

	def eachv2(&block)  # define each method
		for i in 0..@index.length()-1
			yield @cmp_arr[@index[i]]  # pass the corresponding word in the compressed array to block
		end
	end

	def reverse_eachv2(&block) # define reverse_each method
		rev_arr = Array.new() # array to store reversed indices
		rev_arr = @index.reverse # store the indices to compressed string in reverse order
		for i in 0..rev_arr.length()-1
			yield @cmp_arr[rev_arr[i]] # pass the corresponding word in the reversed compressed array to block
		end
	end
end