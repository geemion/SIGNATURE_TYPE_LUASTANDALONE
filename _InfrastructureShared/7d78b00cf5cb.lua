-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7d78b00cf5cb 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 327680 and l_0_0 <= 360448 and (mp.get_mpattribute)("NID:Win32/IcedId.PK!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

