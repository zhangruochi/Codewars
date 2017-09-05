#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin

Your job is to complete the function nbrOfLaps(x, y) that, given the length of the laps for Bob and Charles, finds the number of laps that each jogger has to complete before they meet each other again, at the same time, at the start.

The function takes two arguments:

The length of Bob's lap (larger than 0)
The length of Charles' lap (larger than 0)

The function should return an array (Tuple<int, int> in C#) containing exactly two numbers:

The first number is the number of laps that Bob has to run
The second number is the number of laps that Charles has to run

=end

#辗转相除法
def nbr_of_laps(x, y)
    ori_x = x; ori_y = y

    x,y = y,x unless x > y
    while true
        quotient = x / y 
        remainder = x % y
        
        break if remainder == 0

        x = y
        y = remainder
    end

    return [ori_x * ori_y/(y*ori_x),ori_x * ori_y/(y*ori_y)]
end


def nbr_of_laps(x, y)
  lcm = x.lcm(y)
  [lcm/x, lcm/y]
end


def nbr_of_laps(x, y)
  lcm = x * y / gcd(x, y)
  [lcm / x, lcm / y]
end

#递归调用辗转相除法
def gcd(x, y)
  (x % y) == 0 ? y : gcd(y, x % y)
end


p nbr_of_laps(5, 3); # returns [3, 2]





