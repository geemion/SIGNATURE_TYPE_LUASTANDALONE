-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7c782b69c000 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil == true and l_0_0 >= 4096 and l_0_0 <= 20480 then
  return mp.INFECTED
end
return mp.CLEAN

