-- 函数沙盒是通过重新定义某些函数来实现的，可以使用这样的技术来创建一个安全的环境
-- 假如要限制一个程序访问文件，则只需要使用closure来重新定义函数io.open

-- do ... end 语句块用于作用范围限制
do
    local oldOpen = io.open
    local accessCheck = function (filename)
        if filename=="disallow" then
            return nil
        end
        return 0
    end
    -- 重新定义沙盒
    io.open = function (filename,mode)
        if accessCheck(filename) then
            return oldOpen(filename,mode)
        end
        return nil,"access denied"
    end
end

do
    local file,msg = io.open("disallow","r")
    if file then
        print("handle file ...")
    else
        print(msg)
    end
end
