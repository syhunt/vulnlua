-- http://127.0.0.1/test/cgilua/unvredir.lua?url=http://someurl
local url = cgilua.QUERY.url
if url ~= nil then
 cgilua.redirect(url)
end