#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 
Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

Example:

Given an input string of:

apples, pears # and bananas
grapes
bananas !apples
The output expected would be:

apples, pears
grapes
bananas
The code would be called like so:

result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# result should == "apples, pears\ngrapes\nbananas"
=end

def solution(input, markers)
    output = ""
    markers.each do |marker|
        input.gsub! /#{marker}.*/,"\n"
    end

    input.gsub! /\s*\n$/,"\n" 

end

p solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])

