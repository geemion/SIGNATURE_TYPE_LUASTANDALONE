-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/218965b94a2a 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + (string.find)((pe.mmap_va)(pevars.sigaddr, 32), "t", 1, true) - 1, "\235")
return mp.INFECTED

