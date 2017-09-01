#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 
Your task is to help the young Carl Friedrich to solve this problem as quickly as you can; so, he can astonish his teacher and rescue his recreation interval.

Here's, an example:

f(n=100) // returns 5050
It's your duty to verify that n is a valid positive integer number. If not, please, return false (None for Python, null for C#).

Note: the goal of this kata is to invite you to think about some 'basic' mathematic formula and how you can do performance optimization on your code.

Advanced - experienced users should try to solve it in one line, without loops, or optimizing the code as much as they can.
=end

def f(n)
    return (1..n).sum if n.positive? and n.integer?
    return false
  # insert your code here.... and go crazy!
end

p f(100)