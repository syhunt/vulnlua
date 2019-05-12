-- http://127.0.0.1/test/modlua/xss1.lua?name=<script>alert('XSS');</script>
function handle(r)
 local name = r:parseargs().name
 if name ~= nil then
  r:write(name)
 end
end