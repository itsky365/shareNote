--
-- Created by IntelliJ IDEA.
-- User: zhuxuehuang
-- Date: 16-7-29
-- Time: 下午4:01
-- To change this template use File | Settings | File Templates.
--

file = io.open('./myinput.txt', 'a+')
file:write([[
    我要入门lua
    真的很好玩哦
]])
file:close()

rd = io.input('./myinput.txt', 'r')
for line in rd:lines() do
    print(line)
end
rd:close()