-- http://127.0.0.1/test/cgilua/lfi3.lua?file=c:\boot.ini%00
local file = cgilua.QUERY.file
if file ~= nil then
 cgilua.handlelp(file..".lp")
end