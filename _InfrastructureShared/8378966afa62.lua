-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8378966afa62 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 > 500000 and l_0_0 < 2000000 then
  return mp.INFECTED
end
return mp.CLEAN

