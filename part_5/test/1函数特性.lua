-- 获取系统时间函数
print(os.date())

-- 特殊情况：一个函数若只有一个参数，并且此参数是一个字面字符串或table构造式时，可以省略圆括号
print "hello world"
print [[you
are
my baby]]
print(type{})

function A(list)
    -- _ 是一个哑变量，和golang是一样的
    -- pairs函数用来访问table，和golang类似
    for _,value in pairs(list) do
        print(value)
    end
end
A{x=1,y=2}

-- :操作符使调用o.foo函数时将o隐性地做为函数的第一个参数
function B(table_tmp,key)
    print(table_tmp[key])
end
local table1 = {name="lengyangyu"}
table1.get = B
table1:get("name")

