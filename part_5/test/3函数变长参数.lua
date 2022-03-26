-- ...表示变长参数，和golang类似
function A(...)
    -- select("#",...)表示获取变长的长度，包括nil
    for i = 1, select("#",...), 1 do
        -- select(n,...)表示获取i之后的所有元素
        print(select(i,...))
    end
end

A(1,2,3,4,5,6,7)
