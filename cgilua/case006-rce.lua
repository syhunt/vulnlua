-- http://127.0.0.1/test/cgilua/rce.lua?user=demo%20|%20dir%20c:\%00
cgilua.htmlheader()
local user = cgilua.QUERY.user
if user ~= nil then
 local handle = io.popen("dir "..user)
 local result = handle:read("*a")
 handle:close()
 cgilua.put(result)
end