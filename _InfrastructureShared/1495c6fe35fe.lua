-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1495c6fe35fe 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_va)(pevars.sigaddr - 4, 4)
if (mp.readu_u32)(l_0_0, 1) < 2097152 then
  return mp.CLEAN
end
return mp.INFECTED

