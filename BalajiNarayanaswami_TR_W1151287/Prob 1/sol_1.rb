#!/usr/bin/ruby

class StringUtils

#initialize method instantiates instance variable @str.

def initialize(str)  
  @str=str
end

=begin
word count method (wc) splits the string based on delimiters whitespace, comma and period. 
It uses a hash to maintain the count of occurence of each word.
=end

def wc
  words = @str.split(/[\s,.]+/)
  h=Hash.new(0)
  words.each do |w|
    if h.has_key?(w) == true then
      val = h.fetch(w)
      val = val+1
      h.store(w,val)
    else
      h.store(w,1)
    end
  end  
  h.each_pair do |key,val|
    puts "#{val} #{key}"
  end
end
  
end

#top-level

string=<<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
EOS

#create StringUtils object
obj = StringUtils.new(string)
obj.wc  #call wc method to get the count of words.
