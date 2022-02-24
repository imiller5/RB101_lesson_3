def an_ip?(word)
  return false unless (0..255).cover?(word.to_i)
  true
end

def dot_separated_ip_address?(input_string)
  range = (0..255)
  dot_separated_words = input_string.split(".")  #=> ['10', '4', '5', '11']
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop               #=> word = last number of array until none left ('11')
    return false unless an_ip?(word)
  end

  true
end

p dot_separated_ip_address?("10.4.5.11")
