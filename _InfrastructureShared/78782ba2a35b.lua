-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/78782ba2a35b 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 1703936 and l_0_0 <= 1769472 and pehdr.NumberOfSections >= 3 and pehdr.NumberOfSections <= 5 then
  return mp.INFECTED
end
return mp.CLEAN

