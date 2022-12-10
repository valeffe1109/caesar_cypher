def caesar_cipher(phrase,num, result='')
    alphabet = ['a','b','c','d','e','f','g','h','i','l','m','n','o','p','q','r','s','t','u','v','w','y','z']
    phrase.each_char do |char|
    if char != " " && char.match?(/[[:alpha:]]/)
    tmp = char == char.upcase
    char = char.downcase
    char_index = (alphabet.index char) + num
    char_index = (char_index >= alphabet.length) ? char_index - alphabet.length : char_index
    result+=tmp == true  ? alphabet[char_index].upcase : alphabet[char_index].downcase
  else 
    result += char
  end
end
puts result
end

caesar_cipher("Hi mate how is going?",5)
