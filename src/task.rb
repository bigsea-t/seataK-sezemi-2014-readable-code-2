
# getting file name to import
print "please type file name to import \n>"

#use chomp to delete newline characher
file_name = gets().chomp

# select id
print "please type id to output \n>"

#use chomp to delete newline characher
selected_id = gets().chomp.to_i

# open file in reading mode
file  = open(file_name)

recipe_list = []
id_counter = 0
while line = file.gets
  id_counter += 1
  recipe = {
    id: id_counter,
    val: line
  }
  recipe_list.push(recipe)
end

#DO NOT forget closing file
file.close

#output
recipe_list.each do |recipe|
  if recipe[:id] == selected_id then
    puts recipe[:id].to_s + ":" + recipe[:val]
  end
end

