-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6c8fd2083a8e 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfile)(0, l_0_0))
if (string.find)(l_0_1, "http://www.j.mp/") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

