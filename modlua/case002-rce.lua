-- http://127.0.0.1/test/modlua/rce2.lua?user=demo%20|%20dir%20c:\%00


function handle(r)
 local user = r:parseargs().user
 if user ~= nil then
  os.execute('dir '..user..'.*')
 end
end