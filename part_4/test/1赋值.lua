-- lua运行多重赋值每个值或变量之间以","分隔
local a,b = 1,2
print(a,b)

-- 多重赋值中，多余的变量会被赋值为nil，多与的值会被丢弃
local q,w,e = 0
local r,t = 1,2,3
print(q,w,e,r,t)

-- 在多重赋值中，lua先对=右边的所有元素求值，然后才执行赋值
-- 直接交换两个变量的值
a,b = b,a
print(a,b)

-- 多重赋值主要用于收集函数的多个返回值
local function more()
    return "i","love","you"
end
local c=nil
a,b,c = more()
print(a,b,c)
