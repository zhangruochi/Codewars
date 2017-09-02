#!/usr/bin/env ruby

#info
#-name   : zhangruochi
#-email  : zrc720@gmail.com

=begin 

Personalized greeting

Create a function that gives a personalized greeting. This function takes two parameters: name and owner.

Use conditionals to return the proper message: case | return --- | --- name equals owner | 'Hello boss' otherwise | 'Hello guest'

=end

def greet(name,owner)
    return "Hello boss" if name.eql? owner
    return "Hello guest" 
end


def greet(name,owner)
    name == owner ? "Hello boss" : "Hello guest"
end


def greet(name, owner)
    "Hello #{name == owner ? 'boss': 'guest'} "
end




