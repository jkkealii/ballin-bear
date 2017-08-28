from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how? THAT'S HOW
in_file = open(from_file).read

puts "The input file is #{in_file.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}"

out_file = open(to_file, 'w').write(in_file)

puts "Alright, all done."

# out_file.close
# in_file.close
