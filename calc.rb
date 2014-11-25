@alphabet = ('a'..'z').to_a

def validate_num(num)
  num_chars = num.split('')
  num_chars.each do |char|
  if @alphabet.include?(char)
      puts "Not a valid input."
      exit
    else
      return num.to_f
  end
  end
end

puts "Would you like to add (+), subtract (-), multiply (*) or divide (/)?"
answer = gets.chomp

if answer == "add" || answer == "+"
    puts "Which numbers would you like to add?"
    num_1 = gets.chomp
    num_1 = validate_num(num_1)
    num_2 = gets.chomp
    num_2 = validate_num(num_2)
    answer = num_1.to_f + num_2.to_f
    puts "#{num_1} plus #{num_2} equals #{answer}"


  elsif answer == "subtract" || answer == "-"
    puts "Which numbers would you like to subtract?"
    num_1 = gets.chomp
    num_1 = validate_num(num_1)
    num_2 = gets.chomp
    num_2 = validate_num(num_2)
    answer = num_1.to_f - num_2.to_f
    puts "#{num_1} minus #{num_2} equals #{answer}"

  elsif answer == "multiply" || answer == "*"
    puts "Which numbers would you like to multiply?"
    num_1 = gets.chomp
    num_1 = validate_num(num_1)
    num_2 = gets.chomp
    num_2 = validate_num(num_2)
    answer = num_1.to_f * num_2.to_f
    puts "#{num_1} times #{num_2} equals #{answer}"

  elsif answer == "divide" || answer == "/"
    puts "Which numbers would you like to divide?"
    num_1 = gets.chomp
    num_1 = validate_num(num_1)
    num_2 = gets.chomp
    num_2 = validate_num(num_2)
    exit if num_2 == 0
    answer = num_1.to_f / num_2.to_f
    puts "#{num_1} divided by #{num_2} equals #{answer}"

  else
    puts "Not a valid option."
end
