
# getting file name to import

print "please type file name to import \n>"

#use chomp to delete newline characher
file_name = gets().chomp

# open file in reading mode
file  = open(file_name)


#output
while line = file.gets
  puts line
end

#DO NOT forget closing file
file.close
