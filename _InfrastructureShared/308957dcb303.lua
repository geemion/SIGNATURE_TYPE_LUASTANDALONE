-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/308957dcb303 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 19, "3\246")
;
(pe.mmap_patch_va)(pevars.sigaddr + 30, "\000\001\000")
return mp.INFECTED

