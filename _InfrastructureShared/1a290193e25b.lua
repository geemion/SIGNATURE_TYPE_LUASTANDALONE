-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a290193e25b 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
l_0_0 = (l_0_0.lower)(l_0_0)
if (string.find)(l_0_0, ".py", 1, true) or (string.find)(l_0_0, ".ps1", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

