-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14f78c4e1be6a 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil and l_0_0 >= 663552 and l_0_0 <= 715008 then
  return mp.INFECTED
end
return mp.CLEAN

