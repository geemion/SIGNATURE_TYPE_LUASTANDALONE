-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d61496293df 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 49152 and l_0_0 <= 57344 and (mp.get_mpattribute)("NID:Win64/Atosev.PA!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

