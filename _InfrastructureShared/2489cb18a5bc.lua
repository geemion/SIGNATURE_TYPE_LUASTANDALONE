-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2489cb18a5bc 

-- params : ...
-- function num : 0
local l_0_0 = (string.byte)((pe.mmap_va)(pevars.sigaddr + 2, 1))
local l_0_1 = (string.byte)((pe.mmap_va)(pevars.sigaddr + 5, 1))
if l_0_0 + l_0_1 == 87 or l_0_1 - l_0_0 == 87 then
  return mp.INFECTED
end
return mp.CLEAN

