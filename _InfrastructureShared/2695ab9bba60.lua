-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2695ab9bba60 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 16, 5)
if (mp.readu_u32)(l_0_0, 2) < 9437184 then
  return mp.CLEAN
end
return mp.INFECTED

