-- 使用..将string链接在一起
print("abc".."de")
-- 使用..将number链接成string，但必须空一格
print(12 ..34)
print(12 .."hui")

-- 不能使用+将string链接，lua会自动将+两边的数据转换成number类型
print("123"+"45")
