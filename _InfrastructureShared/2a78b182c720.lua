-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a78b182c720 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 114688 and l_0_0 <= 124160 and pehdr.NumberOfSections == 5 and (pesecs[4]).Name == ".zdata" then
  return mp.INFECTED
end
return mp.CLEAN

