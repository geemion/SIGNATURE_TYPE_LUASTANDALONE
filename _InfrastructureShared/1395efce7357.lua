-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1395efce7357 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_EBP) - 4
local l_0_1 = (mp.readu_u32)((pe.mmap_va)(l_0_0, 4), 1)
;
(pe.set_regval)(pe.REG_EBX, l_0_1 + 1)
return mp.INFECTED

