-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9a6187f7fc65 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil and l_0_0 < 720896 and l_0_0 > 50000 then
  return mp.INFECTED
end
return mp.CLEAN

