-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4929a9b42a5e 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//RPF:IS_Lnk") then
  return mp.INFECTED
end
return mp.CLEAN

