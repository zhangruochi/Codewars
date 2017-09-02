#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com


=begin

When provided with a number between 0-9, return it in words.

Input :: 1

Output :: "One".

Try using "Switch" statements.

This kata is meant for beginners. Rank and upvote to bring it out of beta

=end

def switch_it_up(number)
    case number
    when 0
        return "Zero"    
    when 1
        return "One"
    when 2
        return "Two"
    when 3
        return "Three"
    when 4
        return "Four"
    when 5
        return "Five"
    when 6
        return "Six"
    when 7
        return "Seven"
    when 8
        return "Eight"
    when 9
        return "Nine"
    end
end


def switch_it_up(number)
    numbers = %w(zero one two three four five six seven eight nine ten)
    return "#{numbers[number]}".capitalize
end



puts switch_it_up(9)
