-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5b78e727fb7c 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 108288 and l_0_0 <= 122880 and (pehdr.NumberOfSections >= 4 or pehdr.NumberOfSections <= 6) then
  return mp.INFECTED
end
return mp.CLEAN

