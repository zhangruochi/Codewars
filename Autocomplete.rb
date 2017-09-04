#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin

It's time to create an autocomplete function! Yay!

The autocomplete function will take in an input string and a dictionary array and return the values from the dictionary that start with the input string. If there are more than 5 matches, restrict your output to the first 5 results. If there are no matches, return an empty array.

Example:

autocomplete('ai', ['airplane','airport','apple','ball']) = ['airplane','airport']
For this kata, the dictionary will always be a valid array of strings. Please return all results in the order given in the dictionary, even if they're not always alphabetical. The search should NOT be case sensitive, but the case of the word should be preserved when it's returned.

For example, "Apple" and "airport" would both return for an input of 'a'. However, they should return as "Apple" and "airport" in their original cases.

=end

dictionary=[ 'abnormal',
  'arm-wrestling',
  'absolute',
  'airplane',
  'Airport',
  'amazing',
  'apple',
  'ball' ]



def autocomplete(input, dictionary)
  #your code here
  return dictionary.select {|word| word.downcase.start_with? input.downcase.chars.select {|char| char.ord >= "a".ord and char.ord <= "z".ord }.join}[0...5]
end

def autocomplete(input, dictionary)
  return dictionary.select { |e| e.downcase.start_with? input.downcase.gsub(/[^a-z]/,"") }.first(5)
end


p autocomplete("-a$i-",dictionary)



