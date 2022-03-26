-- lua是弱类型语言，大写开头的函数名或在function前加上local才是局部的
local function fact(n)
    if n==0 then
        return 1
    else
        return n*fact(n-1)
    end
end

print("enter a number:")
-- 大写开头的变量名才是局部的，或者在变量前加上local
A = io.read("*number") 
print(fact(A))
