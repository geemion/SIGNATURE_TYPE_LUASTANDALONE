-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3a89845ba752 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 3, "\001\000")
;
(pe.mmap_patch_va)(pevars.sigaddr + 66, "\001\000")
return mp.INFECTED

