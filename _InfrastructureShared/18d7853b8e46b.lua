-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/18d7853b8e46b 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isvbnative and peattributes.no_security and l_0_0 > 806912 and l_0_0 < 1007616 then
  return mp.INFECTED
end
return mp.CLEAN

