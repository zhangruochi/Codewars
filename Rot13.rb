#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

Please note that using "encode" in Python is considered cheating.
=end

def rot13(string)
    result = ""
    string.each_char do |a|
        if a =~ /[a-z]/
            num = a.ord + 13
            if num  > "z".ord || num < "a".ord
                num -= "z".ord - "a".ord + 1
            end
            result += num.chr
        elsif a =~ /[A-Z]/
            num = a.ord + 13
            if num  > "Z".ord || num < "A".ord
                num -= "Z".ord - "A".ord + 1
            end
            result += num.chr            
        else
            result += a
        end
    end
    result  
end


def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

def rot13(string)
    original = ("A".."Z").to_a.join + ("a".."z").to_a.join
    ciper = ("A".."Z").to_a.rotate(13).join + ("a".."z").to_a.rotate(13).join
    string.tr(original,ciper)

