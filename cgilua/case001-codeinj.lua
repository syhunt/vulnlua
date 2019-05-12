-- http://127.0.0.1/test/cgilua/codeinj1.lua?name=luacode
local name = cgilua.QUERY.name
 cgilua.htmlheader()
 loadstring(name)()
end