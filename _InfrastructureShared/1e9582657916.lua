-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1e9582657916 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 6, 5)
if (mp.readu_u32)(l_0_0, 2) < 1048576 then
  return mp.CLEAN
end
return mp.INFECTED

