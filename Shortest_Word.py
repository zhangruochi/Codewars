#!/usr/bin/env python3

# info
# -name   : zhangruochi
# -email  : zrc720@gmail.com

"""
x Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
"""

def find_short(s):
    l = len(sorted(s.split(), key = lambda x:len(x), reverse = False)[0])
    return l # l: shortest word length


print(find_short("bitcoin take over the world maybe who knows perhaps"))

"""
a = {"1":1,"2":2}
print(a.items())

print(sorted(a.items(),key = lambda x:x[1]))
"""