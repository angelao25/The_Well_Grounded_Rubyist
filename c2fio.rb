#A program that reads a number from a file and writes the Fahrenheit conversion to a different file.
#The resulting program will print the followinng output:
  # Reading Celsius temperature value from data file...
  # Saving result to output file 'temp.out'

file_read = File.read("rdata.dat")
celsius = file_read.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Reading Celsius temperature value from data file..."
file_write = File.new("rdata.out", "w")
file_write.puts fahrenheit
puts "Saving result to output file 'rdata.out'"
file_write.close

  