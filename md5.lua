-- https://www.ietf.org/rfc/rfc1321.txt and contains optimizations from
-- https://en.wikipedia.org/wiki/MD5.




--[[
0 - input
ex of original msg = 1000

1 - Padding
512x1 = 512 bits
512x2 = 1024 bits
512x3 = 1536 bits --> this one
padding = 1536 - 1000 - 64 = 472
obs: the first bit of padding is a 1, the rest is all zeros

2 - Appending Length
length mod 64
1000 mod 64 = 

3 - Dividing in blocks (from 512 multiple bit frame of step 2)
divide the entiring frame into blocks of 512 bits each

4 - Initializing variables
    A = "0x67452301"
    B = "0xEFCDAB89"
    C = "0x98BADCFE"
    D = "0x10325476"

5 - Processing (512 bit blocks from step 3)
    5.1 - A = a, B = b, C = c, D = d
    5.2 - Divide 512 bit blocks into 16 blocks with 32 bit blocks each
    5.3 - Take each 16 blocks from 5.2 and any constant k and do four rounds of the following:
        [16 subclocks], [constant k] into [into round], apply variables a, b, c, d
        to calculate the first round you do a = b + ((a+Process(b,c,d)+m[i]+T[k]))
    

output = 128 bit enconded message
]]