function A()
    -- 0和""都会代表真
    if 0 then
        print("1")
    end
    if "" then
        print("2")
    end
    -- 只有nil和false代表假，其他情况都表示真
    if nil then
        print("3")
    end
    if false then
        print("4")
    end
end

A()
-- a和b是等价的
a=5e+10
b=5e10
print(a)
print(b)
