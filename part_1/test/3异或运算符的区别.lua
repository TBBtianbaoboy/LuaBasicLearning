-- ^在lua中表示次方的意思，而在c++中则表示异或的意思
function A(x,y)
    return (x^2 + y^2)
end

function B(x)
    return x^0.5
end

-- 可以在lua解释器中使用dofile函数进行lua源文件的动态加载，十分方便调试
-- dofile()
