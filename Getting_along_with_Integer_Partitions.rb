#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 
From wikipedia https://en.wikipedia.org/wiki/Partition_(number_theory)

In number theory and combinatorics, a partition of a positive integer n, also called an integer partition, is a way of writing n as a sum of positive integers. Two sums that differ only in the order of their summands are considered the same partition.

For example, 4 can be partitioned in five distinct ways:

4, 3 + 1, 2 + 2, 2 + 1 + 1, 1 + 1 + 1 + 1.

We can write:

enum(4) -> [[4],[3,1],[2,2],[2,1,1],[1,1,1,1]] and

enum(5) -> [[5],[4,1],[3,2],[3,1,1],[2,2,1],[2,1,1,1],[1,1,1,1,1]].

The number of parts in a partition grows very fast. For n = 50 number of parts is 204226, for 80 it is 15,796,476 It would be too long to tests answers with arrays of such size. So our task is the following:

1 - n being given (n integer, 1 <= n <= 50) calculate enum(n) ie the partition of n. We will obtain something like that:
enum(n) -> [[n],[n-1,1],[n-2,2],...,[1,1,...,1]] (order of array and sub-arrays doesn't matter). This part is not tested.

2 - For each sub-array of enum(n) calculate its product. If n = 5 we'll obtain after removing duplicates and sorting:

prod(5) -> [1,2,3,4,5,6]

prod(8) -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 15, 16, 18]

If n = 40 prod(n) has a length of 2699 hence the tests will not verify such arrays. Instead our task number 3 is:

3 - return the range, the average and the median of prod(n) in the following form (example for n = 5):

"Range: 5 Average: 3.50 Median: 3.50"

Range is an integer, Average and Median are float numbers rounded to two decimal places (".2f" in some languages).

#Notes: Range : difference between the highest and lowest values.

Mean or Average : To calculate mean, add together all of the numbers in a set and then divide the sum by the total count of numbers.

Median : The median is the number separating the higher half of a data sample from the lower half. (https://en.wikipedia.org/wiki/Median)

#Hints: Try to optimize your program to avoid timing out.

Memoization can be helpful but it is not mandatory for being successful.

=end


def part(n)
    cache = {1 => [1]}

    for num in (2..n) 
        tmp_list = [] 
        for base in (1..num/2)
            cache[num - base].each do |_|
                tmp_list << _ * base
            end
        end
        cache[num] = tmp_list.push(num).uniq
    end

    result_list = cache[n].sort
    size = result_list.size

    range = result_list.last - result_list.first
    avg = result_list.sum / size.to_f
    
    if size.odd?
        median = result_list[size / 2 ] 
    else    
        median = (result_list[size/2] + result_list[size/2 - 1]) / 2.0
    end

    "Range: %d Average: %.2f Median: %.2f" % [range,avg,median]
end




def enum(n, max = n)
  return [[]] if n == 0
  [max, n].min.downto(1).flat_map do |i|
    enum(n-i, i).map{|rest| [i, *rest]}
  end
end

def prod(e)
    e.map {|e| e.inject(:*)}.uniq.sort
end

def part(n)
    arr = prod(enum(n))
    l   = arr.length
    arr = [arr.max - arr.min, 
        (arr.inject(:+).to_f / arr.length),
        (l % 2 == 1 ? arr[l/2] : (arr[l/2 - 1] + arr[l/2]).to_f / 2)
     ]
    
    sprintf "Range: %d Average: %.2f Median: %.2f", arr[0], arr[1], arr[2]
end

p enum(5)



