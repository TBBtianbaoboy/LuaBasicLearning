-- 要使用表示式来做为table的索引值，需要使用[]来进行限制
local t1 = { ["-"] = "lengyangyu",["a+b"]="good",[3+4] = "you"}
print(t1["-"],t1["a+b"],t1[7])
