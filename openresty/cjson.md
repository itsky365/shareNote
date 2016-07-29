# json使用


## lua中{}转化为json中[]
对于lua本身是把数组和字典融合到一起了，所以他是无法区分空数组和空字典的。处分方法如下：

    --- lua
    local cjson = require "cjson"
    cjson.encode_empty_table_as_object(false) -- {} 转化为 []
    print(cjson.encode({}))
    print(cjson.encode({dogs = {}}))
    
    --- out
    []
    {"dogs":[]}


## 下标初始化为最大为1000

    local data = {1, 2}
    data[1000] = 99 -- 下标过大
    ngx.say(json.encode(data)) -- 报错
    
1000就失败呢？实际上这么做是cjson想保护你的内存资源，担心这个下标过大直接撑爆内存（贴心小棉袄）


## safa模块

使用CJSON 2.1.0，该版本新增一个cjson.safe模块接口，该接口兼容cjson模块，并且在解析错误时不抛出异常，而是返回nil

    local json = require("cjson.safe")
    local str = [[ {"key:"value"} ]] -- 缺少一个双引号
    
    local t = json.decode(str)
    if t then
        ngx.say(" --> ", type(t)) -- nil
    end
    
要让这种情况下可以decode，就要尝试encode_sparse_array api了