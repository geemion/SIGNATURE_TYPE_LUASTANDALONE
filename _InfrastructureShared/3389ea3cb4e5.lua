-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3389ea3cb4e5 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 65, 32)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
;
(pe.mmap_patch_va)(l_0_1, "\b\000\000\000")
;
(pe.set_regval)(pe.REG_ESI, l_0_1)
;
(pe.mmap_patch_va)(pevars.sigaddr, "�F")
return mp.INFECTED

