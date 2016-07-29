#!/usr/local/bin/lua
--
-- Created by IntelliJ IDEA.
-- User: zhuxuehuang
-- Date: 16-7-29
-- Time: 下午4:14
-- To change this template use File | Settings | File Templates.

Account = { balance = 0 }
function Account:deposit(v) --注意，此处使用冒号，可以免写self关键字；如果使用.号，第一个参数必须是self
    self.balance = self.balance + v
end

function Account:withdraw(v) --注意，此处使用冒号，可以免写self关键字；
    if self.balance > v then
        self.balance = self.balance - v
    else
        error("insufficient funds")
    end
end

function Account:new(o) --注意，此处使用冒号，可以免写self关键字；
    o = o or {} -- create object if user does not provide one
    setmetatable(o, { __index = self })
    return o
end

a = Account:new()
a:deposit(100)
b = Account:new()
b:deposit(50)
print(a.balance) -->100
print(b.balance) -->50
