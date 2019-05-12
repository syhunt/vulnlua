-- http://127.0.0.1/test/modlua/rce.lua?user=demo%20|%20dir%20c:\
function handle(r)
 local user = r:parseargs().user
 if user ~= nil then
  local handle = io.popen("dir "..user)
  local result = handle:read("*a")
  handle:close()
  r:puts(result)
 end
end