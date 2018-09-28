'''
A stream of data is received and needs to be reversed. Each segment is 8 bits meaning the order of these segments need to be reversed:

11111111 00000000 00001111 10101010

(byte1) (byte2) (byte3) (byte4)

10101010 00001111 00000000 11111111

(byte4) (byte3) (byte2) (byte1)

Total number of bits will always be a multiple of 8. The data is given in an array as such:

[1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]

'''

def data_reverse(data):
    if len(data) == 0:
        return []
    return data[-8:] + data_reverse(data[0:-8])




 

 
if __name__ == '__main__':

    data1 = [1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]
    data2 = [1,0,1,0,1,0,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1]

    print(data_reverse(data1))

    data3 = [0,0,1,1,0,1,1,0,0,0,1,0,1,0,0,1]
    data4 = [0,0,1,0,1,0,0,1,0,0,1,1,0,1,1,0]

    print(data_reverse(data3))