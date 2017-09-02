#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin
You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

#Example: longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

n being the length of the string array, if n = 0 or k > n or k <= 0 return "".
=end

def longest_consec(strarr, k)
    max_size = 0
    max_str = ""
    (0..strarr.size-k).each do |index|
        cur_str = strarr[index...index+k].join
        cur_size = cur_str.size
        if cur_size > max_size
            max_size = cur_size
            max_str = cur_str
        end
    end    
    max_str
end

p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2)
