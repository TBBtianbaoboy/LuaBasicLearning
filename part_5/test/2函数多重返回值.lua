-- 返回头尾的index
local first,second = string.find("hello Lua user","Lua")
print(first,second)

-- 获取table数组中的最大值和下标
local function getMax(array)
    if not array then
        return nil,nil
    end
    local v,i = array[1],1
    for index, value in ipairs(array) do
        if value>v then
            v = value
            i = index
        end
    end
    return i,v
end

local index,value = getMax{3,2,5,1,7,2,0,1}
print(index,value)

-- 只会获取第一个返回值的情况
local function get()
    return "a","b"
end
    -- 只会获取"a"
local a,b = get(),1
print(a,b)

    -- 所有返回值都会获取
print(get())
    -- 只会获取"a"
print(get(),2)
    -- 只会获取"a"
print(get().."u")
    -- 可以将多重返回值函数放进一个函数中，强制只返回一个结果
print((get()))

    -- 只有当函数的多重返回值在末尾添加或初始化时所有返回值都会获取
local t1 = {get()}
for _, v in pairs(t1) do
    print(v)
end
    -- 在中间则只会获取第一个返回值
local t2 = {"1",get(),"c"}
for _, v in pairs(t2) do
    print(v)
end

