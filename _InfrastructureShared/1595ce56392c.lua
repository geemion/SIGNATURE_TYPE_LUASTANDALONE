-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1595ce56392c 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 16)
local l_0_1 = (mp.readu_u32)(l_0_0, 3)
local l_0_2 = (pe.mmap_va)(l_0_1, 6)
if (string.byte)(l_0_2, 1) == 83 and (string.byte)(l_0_2, 2) == 108 and (string.byte)(l_0_2, 3) == 101 and (string.byte)(l_0_2, 4) == 101 and (string.byte)(l_0_2, 5) == 112 and (string.byte)(l_0_2, 6) == 0 then
  return mp.INFECTED
end
return mp.CLEAN

