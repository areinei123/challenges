#Write Ruby<->English answers here as comments in your code

array = [28214, 63061, 49928, 98565, 31769, 42316,
  23674, 3540, 34953, 70282, 22077, 94710, 50353,
  17107, 73683, 33287, 44575, 83602, 33350, 46583]
sum = 0

array.each do |number|
  sum += number
end
puts sum

array.each do |number|
  puts number
end

array.each do |number|
  if number % 2 == 0
    sum +=number
  end
end
puts sum

array.each do |number|
  unless number % 2 == 0
    sum += number
  end
end
puts sum

array.each do |number|
  if number % 5 == 0
    sum += number
  end
end
puts sum

array.each do |number|
  sum = sum + (number * number)
end
puts sum

array = ["joanie", "annamarie", "muriel", "drew", "reva",
    "belle", "amari", "aida", "kaylie", "monserrate",
    "jovan", "elian", "stuart", "maximo", "dennis",
    "zakary", "louvenia", "lew", "crawford", "caitlyn"]

sum = 0

array.each do |name|
  puts name.reverse
end

array.each do |name|
  sum += name.length
end
puts sum

array.each do |name|
  if name.length < 5
    sum += 1
  end
end
puts sum

array.each do |name|
  if name.last == a || name.last == e || name.last == i || name.last == o || name.last == u
    sum += 1
  end
end
puts sum

array.each do |name|
  if name.length > 5
    sum += 1
  end
end
puts sum

array.each do |name|
  if name.length == 5
    sum +=1
  end
end
puts sum


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

best_records.each do |artist, record|
  puts artist
end

best_records.each do |artist, record|
  puts record
end

best_records.each do |artist, record|
  puts "#{artist} is #{artist.length} characters long."
end

best_records.each do |artist, record|
  record = "Greatest Hits"
end

best_records.each do |artist, record|
  best_records.delete_if artist.rindex [aeiou]
end


ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96,
  "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62,
  "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27,
  "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18,
  "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

ages.each do |name, age|
  puts name
end

ages.each do |name, age|
  puts "#{name} is #{age} years old."
end

ages.each do |name, age|
  puts name if name.length % 2 != 0
end

ages.each do |name, age|
  ages.delete_if {|name, age| age < 25}
end
puts ages

ages.each do |name, age|
  puts "#{name}: #{age}" if name.length >= 5
end

people =
{
  "Alia O'Conner PhD" => {
    "phone" => "538.741.1841",
    "company" => "Leuschke-Stiedemann",
    "children" => [
      "Simone",
      "Cindy",
      "Jess"
    ]
  },
  "Ike Haag" => {
    "phone" => "(661) 663-8352",
    "company" => "Carter Inc",
    "children" => [
      "Joe",
      "Ofelia",
      "Deron"
    ]
  },
  "Brian Heller" => {
    "phone" => "1-288-601-5886",
    "company" => "O'Conner Group",
    "children" => [
      "Renee"
    ]
  },
  "Maryse Johns" => {
    "phone" => "218-571-8774",
    "company" => "Kuhlman Group",
    "children" => [
      "Dominick",
      "Tricia"
    ]
  },
  "Dr. Adela DuBuque" => {
    "phone" => "1-203-483-1226",
    "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

people.each do |name, value|
  puts name
end

people.each do |name, value|
  puts '' + name + ' works for ' + value["company"] + ''
end

people.each do |name, value|
  puts value["children"]
end

people.each do |name, value|
  puts value["company"]
end

people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
people.each do |name, value|
  puts name
end
# * What are the names of all the children in `people`?
people.each do |name, value|
  puts value ["children"]
end
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
people.each do |name, value|
  phone_numbers = 
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
