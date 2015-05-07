class WrapAround
	attr_accessor :output
def initialize(prefix, suffix, *raw_string)    #instanitate object with prefix and suffix around each string
	@output = Array.new()  #array to store strings in required format
	for i in 0..raw_string.length-1
		@output.push(prefix + raw_string[i].to_s + suffix)   #store strings in output array
	end
end

def set(prefix, suffix, *raw_string)   #method to allow resetting strings array
	@output = Array.new()   #clear previous contents
	for i in 0..raw_string.length-1   
		@output.push(prefix + raw_string[i].to_s + suffix)
	end
end
end



