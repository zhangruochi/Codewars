#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin

Dave has a lot of data he is required to apply filters to, which are simple enough, but he wants a shorter way of doing so.

He wants the following functions to work as expected:

even # [1,2,3,4,5].even should return [2,4]
odd # [1,2,3,4,5].odd should return [1,3,5]
under # [1,2,3,4,5].under(4) should return [1,2,3]
over # [1,2,3,4,5].over(4) should return [5]
in_range # [1,2,3,4,5].in_range(1..3) should return [1,2,3]
They should also work when used together, for example:

(1..100).to_a.even.in_range(18..30) # should return [18, 20, 22, 24, 26, 28, 30]
And finally the filters should only accept integer values from an array, for example:

["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].even # should return [300, 122]

=end


class Array
  def even
    ints.select &:even?
  end
  
  def odd
    ints.select &:odd?
  end
  
  def under(x)
    ints.select { |elem| elem < x }
  end
  
  def over(x)
    ints.select { |elem| elem > x }
  end
  
  def in_range(r)
    ints.select { |x| r.include?(x) }
  end
  
  def ints
    select { |x| x.is_a? Integer }
  end
end

p ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].even # [1,2,3,4,5].even should return [2,4]
p ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].odd # [1,2,3,4,5].odd should return [1,3,5]
p ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].under(181) # [1,2,3,4,5].under(4) should return [1,2,3]
p ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].over(181) # [1,2,3,4,5].over(4) should return [5]
p ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].in_range(1..2) # [1,2,3,4,5].in_range(1..3) should return [1,2,3]









