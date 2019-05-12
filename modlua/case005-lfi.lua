-- http://127.0.0.1/test/modlua/lfisend.lua?file=xss2.lua
-- http://127.0.0.1/test/modlua/lfisend.lua?file=../htdocs/test/modlua/index.lp

-- http://127.0.0.1/test/modlua/lfisend.lua?file=../README

function handle(r)
 local file = r:parseargs().file
 if file ~= nil then
  r:sendfile(file..'.txt')
 end
end