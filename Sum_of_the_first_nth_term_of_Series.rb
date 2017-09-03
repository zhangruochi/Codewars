#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 

###Task:

Your task is to write a function which returns the sum of following series upto nth term(parameter).

Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
###Rules:

You need to round the answer to 2 decimal places and return it as String.
If the given value is 0 then it should return 0.00
You will only be given Natural Numbers as arguments.
###Examples:

SeriesSum(1) => 1 = "1.00"
SeriesSum(2) => 1 + 1/4 = "1.25"
SeriesSum(5) => 1 + 1/4 + 1/7 + 1/10 + 1/13 = "1.57"

=end



def series_sum(n)
  sum = 0
  n.times do |num|
    sum += 1.0 / (num * 3 + 1) 
  end
  sum = sum.round(2).to_s
    if sum.split(".").last.size == 1
    sum += "0"
  end
  sum
end

def series_sum(n)
  sum = 0
  n.times do |num|
    sum += 1.0 / (num * 3 + 1) 
  end
  return "%.2f" % sum
end


def series_sum(n)
  return "0.00" if n == 0
  "%.2f" % (0..n-1).to_a.map {|x| 1.0 / (x*3+1)}.reduce(:+)
end

p series_sum(0)
