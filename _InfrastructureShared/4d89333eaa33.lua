-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4d89333eaa33 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 17, "\141\r")
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 24, 1)
local l_0_1 = pevars.sigaddr + 23 + (string.byte)(l_0_0, 1) + 2 - 2
;
(pe.mmap_patch_va)(pevars.sigaddr + 23, "��")
;
(pe.mmap_patch_va)(l_0_1, "��")
return mp.INFECTED
