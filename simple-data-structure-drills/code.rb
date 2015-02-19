transactions = [50_000,-2_000,-25_000,4_000,-12_000,5_000,-800,-900,43_000,
  -30_000,15_000,62_000,-50_000,42_000]

  #Answer Questions
  puts "What is the value of the first trans.?"
  puts transactions.first
  puts "What is the value of the second trans.?"
  puts transactions [1]
  puts "What is the value of the fourth trans.?"
  puts transactions [3]
  puts "What is the value of the last trans.?"
  puts transactions.last
  puts "What is the value of the 5th from last transaction?"
  puts transactions [-5]
  puts "What is the value of the transaction with index 5?"
  puts transactions [5]
  puts "How many transactions are there in total?"
  puts transactions.count
  puts "How many positive transactions are there in total?"
  puts transactions.count {|n| n > 0}
  puts "How many negative transactions are there in total?"
  puts transactions.count {|n| n < 0}
  puts "What is the largest withdrawl?"
  puts transactions.sort.first
  puts "What is the largest deposit?"
  puts transactions.sort.last
  puts "What is the smallest withdrawl?"
  puts transactions.bsearch {|n| n < 0}
  puts "What is the smallest deposit?"
  puts transactions.sort.bsearch {|n| n > 0}
  puts "What is the total value of all the transactions?"
  total = 0
  transactions.each {|n| total+=n}
  puts total
  puts "If Dr. Dre's inital balance was $239,900 in this account, what is the
  value of his balance after his last transaction?"
  balance = 239_900 + total
  puts balance

best_records = {
  "Tupac"=>"All Eyez on Me",
  "Eminem"=>"The Marshall Mathers LP",
  "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
  "Led Zeppelin"=>"Physical Graffiti",
  "Metallica"=>"The Black Album",
  "Pink Floyd"=>"The Dark Side of the Moon",
  "Pearl Jam"=>"Ten",
  "Nirvana"=>"Nevermind"
}

puts "How many records are in the hash?"
puts best_records.count
puts "Who are all the artists?"
puts best_records.keys
puts "What are the names of all the albums?"
puts best_records.values
#Delete Eminem
best_records.delete_if {|artist,album| artist=="Eminem"}
#Add your favorite artist and album
best_records ["Rush"] = "A Farewell to Kings"
#Change Nirvana's album
best_records ["Nirvana"] = "MTV Unplugged in New York"
puts "Is Nirvana included in {best_records}?"
puts best_records.has_key("Nirvana")
puts "Is Soundgarden included in {best_records}?"

#They're not there? Add a key-value pair for Soundgarden
best_records ["Soundgarden"] = "Superunknown"
puts "Which key-value pairs have a key that
has a length less than or equal to 6 characters"
puts best_records {|key,value| if key.length >=6}
  puts "Which key-value pairs have a value that
  is greater than 10 characters?"
