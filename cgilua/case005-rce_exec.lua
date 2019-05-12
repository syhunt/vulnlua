-- http://127.0.0.1/test/cgilua/rce2.lua?user=demo%20|%20dir%20c:\%00
cgilua.htmlheader()
local user = cgilua.QUERY.user
if user ~= nil then
 os.execute('dir '..user..'.*')
end