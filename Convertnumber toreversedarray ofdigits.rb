#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com


=begin
Convert number to reversed array of digits

Given a random number:

C#: long;
C++: unsigned long;
You have to return the digits of this number within an array in reverse order.

Example:

348597 => [7,9,5,8,4,3]
=end

def digitize_1(n)
    list = []
    puts n.to_s
   
    n.to_s.each_char do |char| 
        list << char.to_i
    end

    return list.reverse
end

def digitize(n)
    return n.to_s.chars.reverse.map(&:to_i)
end


p digitize(348597)