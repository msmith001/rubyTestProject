require 'erb'

class AlbertoTestApp
  
  def initialize
  end
  
  def put_in_frame (string)
    #the length of the longest word, used for the number of astericks
    longest = 0
    string_array = string.split
    #finds the longset word
    string_array.each do |word|
    	if word.length>longest
    		longest = word.length
    	end
    end

    #prints 4 astericks more than the length of the longest word
    puts '*'*(longest+4)
    #prints each word on a new line with the appropiate number of spaces of the word
    string_array.each do |word|
    	puts '* ' + word + ' '*(longest-word.length+1) + '*'
    end
    #prints the last line of astericks
    puts '*'*(longest+4)
  end

  def template
  	File.read("AlbertoTest.html.erb")
  end

  def renderer
    ERB.new(template)
  end



end

# puts "enter the list of words separated by spaces"
# string = gets.chomp
# frame_text = AlbertoTestApp.put_in_frame(string)
# :body_text = frame_text.split("\n")

my_program = AlbertoTestApp.new

my_program.renderer.result(binding)
