-- table 构造式就是对table进行初始化，;可以用于区分不同的域，方便识别
local a = {x=0,y=1,read="io";"a","b","c",}
print(a.x)
print(a.y)
print(a.read)

-- table 可以做为另一个table的值进行嵌套
local b = {}
b.t1 = a;
print(b.t1.read)

-- 使用table来实现一个链表，虽然不常用，但是有必要学习
function GetList()
    local list = nil
    for line in io.lines() do
        if line=="end" then
            break
        end
        list = {next = list,value = line}
    end
    return list
end
function PrintList(x)
    local l = x
    while l do
        print(l.value)
        l = l.next
    end
end
PrintList(GetList())
