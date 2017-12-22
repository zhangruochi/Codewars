#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 
Longest Palindrome

Find the length of the longest substring in the given string s that is the same in reverse.

As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.

If the length of the input string is 0, return value must be 0.

Example:

"a" -> 1 
"aab" -> 2  
"abcde" -> 1
"zzbaabcd" -> 4
"" -> 0
=end


def longest_palindrome s
    return 0 if s.empty?
    max_length = 0

    s.size.times do |index|
        tail = s.size - 1
        while tail >= index
            #p s[index..tail]
            if s[index] == s[tail] 
                if is_palindrome s[index..tail]
                    length = tail-index+1
                    max_length = length if length > max_length
                    break 
                end
            end    
            tail -= 1
        end
    end
    return max_length
end



#判断回文数 O(n)  s == s.reverse
def is_palindrome s
    i = 0
    j = s.size-1
    until i >= j
        return false if s[i] != s[j]
        i += 1
        j -= 1
    end
    return true
end

#p is_palindrome("racecar")


def longest_palindrome s
  s.length.downto(1) do |n|
    s.chars.each_cons(n) do |arr|
      return n if arr == arr.reverse
    end
  end
  0
end


p longest_palindrome "baablkj12345432133d"
