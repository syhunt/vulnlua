-- http://127.0.0.1/test/cgilua/xss1.lua?name=<script>alert('XSS');</script>
local name = cgilua.QUERY.name
cgilua.htmlheader()
if name ~= nil then
 cgilua.put(name)
end