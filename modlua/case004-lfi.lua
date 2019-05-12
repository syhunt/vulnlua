-- http://127.0.0.1/test/modlua/lfi2.lua?file=c:\boot.ini%00

function handle(r)
 local file = r:parseargs().file
 if file ~= nil then
  r:puts(file)
  local f = io.open(file..'.txt')
  local result = f:read("*a")
  f:close()
  r:puts(result)
 end
end