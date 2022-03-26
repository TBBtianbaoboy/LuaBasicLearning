-- @answer: and 和or采用短路求值，即在有需要的时候才去判断第二个参数
-- and 如果第一个参数为nil或false，则返回第一个参数，否则返回第二个参数
print(nil and 2)
print(false and 2)
print(2 and 5)
print(2 and false)
print(2 and nil)
-- or 如果第一个参数不为nil或false，则返回第一个参数，否则返回第二个参数
print(0 or nil)
print(nil or 3)
print(false or 4)

-- and 和or的优先级高于=运算符，下列含义就是，a如果为nil的话，则将5赋值给a，否则，不变
local a = a or 5
print(a)

-- 使用and和or实现类似于c++的条件运算符?:，前提是x一定不是nil或false，and的优先级高于or，以下会从左向右运算
local x = 1;
local y = 2;
local max = (x>y) and x or y
print(max)

-- not 永远只会返回true和false
print(not nil)
print(not 0)
print(not not nil)
