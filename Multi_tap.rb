#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin

------- ------- -------
|     | | ABC | | DEF |
|  1  | |  2  | |  3  |
------- ------- -------
------- ------- -------
| GHI | | JKL | | MNO |
|  4  | |  5  | |  6  |
------- ------- -------
------- ------- -------
|PQRS | | TUV | | WXYZ|
|  7  | |  8  | |  9  |
------- ------- -------
------- ------- -------
|     | |space| |     |
|  *  | |  0  | |  #  |
------- ------- -------

For this assignment, write a module that can calculate the 
amount of button presses required for any phrase. 
Punctuation can be ignored for this exercise. 
Likewise, you can assume the phone doesn't distinguish 
between upper/lowercase characters (but you should allow your 
module to accept input in either for convenience).

=end

def presses(phrase)
    groups = ["1", " 0", "ABC2", "DEF3", "GHI4", "JKL5", "MNO6", "TUV8", "PQRS7", "WXYZ9"]
    phrase.upcase.chars.map do |c|
        1 + groups.find {|word| word.include? c}.index(c)
    end.reduce(:+)
end



