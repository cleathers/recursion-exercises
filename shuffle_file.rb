def shuffle_file
  input = get_input

  lines = File.readlines(input)
  lines.shuffle!


  new_name = "#{input.split('.')[0]}-shuffled.txt"

  write_to_file(new_name, lines)
end

def get_input
  puts 'Enter file name, include the extention please, sir and or miss'
  gets.chomp
end

def write_to_file(new_name, lines)
  File.open(new_name, "w") do |f|
    lines.each do |line|
      f.puts line
    end
  end
end