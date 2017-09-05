#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com


=begin 

Linked Lists - Length & Count

Implement Length() to count the number of nodes in a linked list.

length(null) === 0
length(1 -> 2 -> 3 -> null) === 3
Implement Count() to count the occurrences of an integer in a linked list.

count(null, 1) === 0
count(1 -> 2 -> 3 -> null, 1) === 1
count(1 -> 1 -> 1 -> 2 -> 2 -> 2 -> 2 -> 3 -> 3 -> null, 2) ===

=end

class Node
    attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def length(node)
    node ? 1 + length(node.next) : 0
end

def count(node, data)
  node ? (node.data == data ? 1 : 0) + count(node.next, data) : 0
end