file_path = ARGV[0]
line_number = ARGV[1].to_i
word_counter = {}
file = File.open(file_path, "r")

file.each_line do |line|
  words = line.split
  words.each do |word|
    word = word.gsub(/[()'",-;:.*?!]/,'').downcase
    if word_counter[word]
      word_counter[word] += 1
    else
      word_counter[word] = 1
    end
  end
end


puts "Words count: "

word_counter.sort {|a,b| b[1] <=> a[1]}.first(line_number).each do |key,value|
  puts "#{key}: #{value}"
end
