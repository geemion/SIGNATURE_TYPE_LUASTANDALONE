-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#__Lua_ISOExt 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((mp.getfilename)(), -4))
if l_0_0 == ".iso" or l_0_0 == ".img" then
  return mp.INFECTED
end
return mp.CLEAN

