--: 如果将一个function写在另一个function中或一个function的返回值为function，那么这个function中的function或返回的function依旧可以访问上层函数中的局部变量

--: function in function
local function sortbygrade()
    local name  = {"a","b","c"}
    local grade = {a=3,b=10,c=1}
    -- grade在sort函数中即不是全局变量也不是局部变量，其称为非局部变量
    table.sort(name,function (a,b)
        return grade[a]>grade[b]
    end)
    return name
end

for _, value in pairs(sortbygrade()) do
    print(value)
end

--: return is function
local function newCounter(i)
    i = i or 0
    return function ()
        i = i + 1
        return i
    end
end

--: c1 和c2是不同的closure，因此他们不在同一空间，会分开来处理他们各自的i值
local c1 = newCounter()

print(c1())
print(c1())

local c2 = newCounter()
print(c2())
print(c2())
print(c1())

--: local function 的本质，当我们使用如下方式定义一个函数时
-- local function func1()
--     return "this is function"
-- end
--: lua会将其展开为以下的形式
-- local func1
-- func1 = function ()
--     return "this is function"
-- end

--: 在进行间接递归时，需要在统一在函数之前进行前向声明
local f,g
function f()
    g()
end
function g()
    f()
end
