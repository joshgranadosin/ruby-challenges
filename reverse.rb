def reverse(str)
	newStr = ''
	str.each_char {|char| newStr.insert(0, char)}
	return newStr
end

puts reverse('Neela')