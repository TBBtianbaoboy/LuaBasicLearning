-- 类似于这种形式，使用table的机制，来使得参数都有一个名字，这种方式，也极大地方便各种可选参数的设定
local function rename(table)
    print(table.oldname,table.newname)
end
rename{oldname="a",newname="b"}
