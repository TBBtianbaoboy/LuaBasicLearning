-- table是一个关联数组，可以使用number或其他类型(除nil)来进行索引
-- lua也是通过table来表示module，package和object的
-- 以下举例，lua表示使用string read来索引table io
local i=io.read()
-- lua table是对象，而且是匿名的，lua程序仅持有对table的引用，不会暗中产生table的副本或创建一个新的table

-- create table，a是table的引用
local a = {}
a["x"] = "abc"
a[1] = 4
a["qwe"] = 6
-- 此时a和b是等价的
local b = a;
local k = "x"
-- 可以使用变量做为index来使用table值
print(a[k])
print(a["qwe"])
print(b[1])
-- table中不存在的index为nil，同样，也可以将nil赋值给一个已经存在的index，将此index删除
print(a[2])
a["qwe"] = nil
-- 可以使用.来使用table值，只是这里的x必须是table中真实存在的index，不能是变量
print(a.x)
-- 将a的引用斩断
a = nil
print(b[1])
-- 将b的引用斩断，此时，无引用，lua的垃圾收集器会删除table，并复用内存
b = nil

print("------------------------------------")
b = {}
-- index 0和其他都不会参与table长度的计算
b[0] = 1
b["a"] = 4
b[1] = 1
b[3] = 1
b[1000] = 1
-- #获取table长度时，遇到nil则立刻结束，因此使用#计算table array的长度时容易出错
print(#b)
-- 可以使用table.maxn函数来计算(5.1 support/5.4废弃)
-- print(table.maxn(b))
