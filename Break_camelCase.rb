#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin
Complete the solution so that the function will break up camel casing, using a space between words.

Example

solution('camelCasing') # => should return 'camel Casing'
=end

def solution(string)
    result = ""
    string.each_char do |char|
        if char =~ /[A-Z]/
            result += " #{char}" 
        else
            result += char
        end
    end
    result
end

p solution('camelCasing')


p 'zhangRuoChi'.gsub /([A-Z])/,' \1'



