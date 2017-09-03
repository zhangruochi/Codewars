#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com


=begin 

Write a function, persistence, that takes in a positive parameter num 
and returns its multiplicative persistence, which is the number of times 
you must multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number
 
=end

def persistence(n)
    sum = 1
    count = 0

    if n < 10
        return count
    end


    while true
        n.to_s.each_char do |char|
            sum *= char.to_i
        end

        count += 1
        
        if sum < 10
            break
        else
            n = sum
            sum = 1
        end
    end
    count
end


def persistence(n)
    n < 10 ? 0 : 1 + persistence(m.to_s.chars.map(&:to_i).reduce(:*))
end



p persistence(39)
