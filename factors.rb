def factors(number)
  number.times do |factor|
    factor += 1
    puts factor if number % factor == 0
  end

end

