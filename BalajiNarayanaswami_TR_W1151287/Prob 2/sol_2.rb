#!/usr/bin/ruby

class StudentRecord

=begin
Initialize method instantiates the instance variables 
key, val and student.If phonenumber is passed it converts to integer.
=end

  def initialize(key, val, student)
    @student = student
    @key = key
    if @key == :phonenumber then
      @val = val.to_i
    else
      @val = val
    end
  end

=begin
search method selects the records that match the given criteria. 
if no record matches, it prints message.
=end

  def search  
    rec = @student.select { |s| s[@key] == @val }
    if rec.empty? then
      puts "No records found!"
    else
      puts rec
    end
  end
end

#top-level

puts "**SEARCH STUDENTS**\n1.firstname\n2.lastname\n3.phonenumber\nEnter your choice:"
choice = gets.chomp   #get search key
puts "Enter value to search:"
svalue = gets.chomp   #get search value

skey = case choice 
       when "1" then :firstname
       when "2" then :lastname
       when "3" then :phonenumber
       else "error"
       end

#create StudentRecord object

obj = StudentRecord.new(skey,svalue, [ {:firstname => "John", :lastname => "LastnameJohn",  :phonenumber => 123456789}, {:firstname => "Ken", :lastname => "Lastnameken",  :phonenumber => 456734244}, {:firstname => "Marisa", :lastname => "lastnamemarisa",  :phonenumber => 123456789}, {:firstname => "Ken", :lastname => "Kenlastname",  :phonenumber => 456734244}])

obj.search   #call search method for the given skey and svalue
