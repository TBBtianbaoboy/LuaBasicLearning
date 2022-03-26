-- 与c++中的do while相似
local line
repeat
    -- repeat循环中的局部变量也可以用于条件测试
    local line = io.read()
until line ~= ""
print(line)
