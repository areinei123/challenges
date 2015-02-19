#Fred Chapman
#1/14/2015

#Odd Numbers Challenge

#Write a program that prints out all of the odd numbers
#from 1 to 100, each on a new line.

(1..100).step(2).each do |n|
  puts n
end
