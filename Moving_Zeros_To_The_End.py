#!/usr/bin/env python3

# info
# -name   : zhangruochi
# -email  : zrc720@gmail.com

"""
Write an algorithm that takes an array and moves all of the zeros to the end, 
preserving the order of the other elements.
"""
array = ["a",0,0.0,"b",None,"c","d",0,1,False,0,1,0,3,[],0,1,9,0,0,{},0,0,9]

def move_zeros(array):
    #your code here
    result = []
    for _ in array:
        if _ == 0 and not _ is False:
            continue
        result.append(_)

    result = result + [0] * (len(array) - len(result))

    return result


def move_zeros(array):
    l = [i for i in array if isinstance(i,bool) or i != 0]
    return l +[0]* (len(array) - len(l))    


print(move_zeros(array))

