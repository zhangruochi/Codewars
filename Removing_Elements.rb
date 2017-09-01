#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com


=begin
Take an array and remove every second element out of that array. Always keep the first element and start removing with the next element.

Example:

my_arr = ['Keep', 'Remove', 'Keep', 'Remove', 'Keep', ...]
=end


def remove_every_other(arr)
  result = []
  arr.each_with_index do |obj, index_|
    result << obj if index_.even?
  end
  result
end

p remove_every_other([1,2,3,4,5])



def remove_every_other(arr)
    arr.select.with_index {|obj, index| index.even?}
end

p remove_every_other([1,2,3,4,5])


def remove_every_other(arr)
    arr.each_slice(2).map(&:first)
end

p remove_every_other([1,2,3,4,5])







# test some  syntax
[0,1,2].each.with_index(1) { |a,b | p [a,b]}

p "a".upcase
p :upcase.to_proc.call("a")

