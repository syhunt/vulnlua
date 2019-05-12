-- http://127.0.0.1/test/htrs.lua?user=test%0d%0aLocation:http://www.syhunt.com
local user = cgilua.QUERY.user
if user ~= nil then
 cgilua.header('Anything',user)
 cgilua.htmlheader()
end