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
    return "" if strarr.length == 0 or k > strarr.length or k <= 0
    return strarr.sort[0...k].join
end

p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2)
