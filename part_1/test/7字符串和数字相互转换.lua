-- 读取一行输入
local line = io.read()
-- 将string转换成number，如果成功则返回number，否则，返回nil
local n = tonumber(line)
if n==nil then
    print("failed")
else
    print(n^2)
end

-- tostring/..将number转换成string
-- ..的优先级高于==
print(123 .."" == "123")
-- 可以使用#获取string的长度
print(#tostring(123))
