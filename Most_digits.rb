#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 
Find the number with the most digits.

If two numbers in the argument array have the same number of digits, return the first one in the array.
=end

def find_longest(arr)
    arr = arr.map(&:to_s)
    
    max_length = 0
    max_char = nil

    arr.each do |char|
        current_length = char.length
        if current_length > max_length
            max_length = current_length
            max_char = char
        end
    end

    max_char.to_i
end


def find_longest(arr)
    arr.max_by {|num| num.to_s.size}
end


p find_longest([3, 40000, 100])
