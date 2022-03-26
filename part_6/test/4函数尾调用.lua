--: 尾调用类似于c中goto的函数调用，当一个函数调用是另一个函数的最后一个动作时，该调用才算是一条尾调用
--: 尾调用具有消除特性，不会耗费任何栈空间，因此，一个函数可以拥有无数嵌套的尾调用，并不会导致栈溢出

--: 类似下面这样，只有"return <func>(<args>)"这样的调用形式(func和args可以是任意复杂的表达式)才算是一条尾调用
local function tailCall(n)
    if n>0 then
        return tailCall(n-1)
    end
end

--: 类似下面这样，就不是尾调用，因为调用完tailCall之后，还要丢弃tailCall返回的临时结果
local function f(x)
    tailCall(x)
end
f(3)
-- return g(x)+1      -- 还需要做一次加法
-- return x or g(x)   -- 必须调整为一个返回值
-- return (g(x))      -- 必须调整为一个返回值

--: 尾调用的应用场景：十分使合用来实现"状态机"，返回的每个函数都是一种状态
