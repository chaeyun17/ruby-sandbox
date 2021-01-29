def years_in_one_house(age, moves)
	return (age.to_f / (moves.to_f+1)).round
end

puts years_in_one_house(30, 1)
puts years_in_one_house(15 ,1)