-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2c890fe39f32 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 6, "\002\000\000\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 16, "\000\000\000\000")
return mp.INFECTED

