# Program that converts from Fahrenheit to Celsius using the same techniques
file_read = File.read("rdata.dat")
fahrenheit = file_read.to_i
#celsius = file_read.to_i
celsius = (fahrenheit - 32) / 9 * 5
#fahrenheit = (celsius * 9 / 5) + 32
puts "Reading Fahrenheit temperature value from data file..."
#file_write = File.new("rdata.out", "w")
#file_write.each do |file| 
  #file_write.puts celsius
#end
#puts "Saving result to output file 'rdata.out'"
#file_write.close
File.open("rdata.out", "w") do |file|
  file.puts celsius
end
puts "Saving result to output file 'rdata.out'"


