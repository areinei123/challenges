def translate(sentence)
  result = []
  translation = ''
  vowels = %w[a e i o u]
  sentence.split(" ").map do |word|
    if vowels.include? word[0]
      translation = word + "way"
      result.push(translation)
    else
      translation = word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
      result.push(translation)
    end
  end
  result.join(" ")
end

input = ARGV.join(" ")
puts translate(input)
