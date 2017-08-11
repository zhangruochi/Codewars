#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin
You need to write a function that reverses the words in a given string. A word can also fit an empty string. If this is not clear enough, here are some examples:

As the input may have trailing spaces, you will also need to ignore unneccesary whitespace.

reverse('Hello World') == 'World Hello'
reverse('Hi There.') == 'There. Hi'
=end


def reverse(string)
  #your code here
  return string.split.reverse.join(" ")
end


p " ".split
p [].join(" ")