# def how_many_match(my_number, bash_numbers)
#   counter = 0
#   i = 0
#   my_number.length.times do
#     p bash_numbers[i]
#     p my_number[i]
#     if bash_numbers[i] == my_number[i]
#       counter += 1
#       p "#{counter} this is a counter"
#     end
#     i += 1
#   end
#   p counter
# end

def off_by_one_number(my_number, bash_numbers)
  counter = 0
  i = 0
  my_number.length.times do
    if bash_numbers[i] == my_number[i]
      counter += 1
    end
    i += 1
  end
  counter == my_number.length - 1
end
#
# puts off_by_one_number("1234", "1239")

def off_by_one_arr(my_number, bash_numbers)
  arr = []
  bash_numbers.each do |winner|
    if off_by_one_number(winner, my_number)
      arr << winner
    end
  end
  arr
end

print off_by_one_arr("1234", ["1233", "1345", "7645", "1234"])
