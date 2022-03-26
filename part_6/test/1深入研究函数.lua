-- function本质上是匿名的，即它们都没有名称，我们所看到的函数名其实就是引用函数的变量
    -- 我们可以这样创建一个函数
local function f()
    return "function"
end
    -- 其是这个函数，真正意义上是这样的
local f2 = function ()
    return "function"
end
-- f和f2都只是对这个匿名函数的引用
print(f())
print(f2())

-- table.sort的匿名函数应用举例
local t1 = {"gras","gerq","zxcs","gzr"}
for _, value in pairs(t1) do
    print(value)
end
print("-------------")
    -- sort的第二个参数就是一个匿名函数，会在内部用作排序的标准，这点和c++的std::sort()函数一样
table.sort(t1,function (a,b)return a>b end)
for _, value in pairs(t1) do
    print(value)
end

-- 匿名函数在求导中的应用
local function decl(func,delta)
    delta = delta or 1e-4
    return function (x)
        return (func(x+delta)-func(x))/delta
    end
end

print(decl(math.sin)(10))
print(math.cos(10))
