-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4878a626e6b4 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 90112 and l_0_0 <= 98304 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 and (mp.get_mpattribute)("NID:Hupigon.A!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN

