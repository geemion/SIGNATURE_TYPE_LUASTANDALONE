-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2c897c8d6a84 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("lua_codepatch_tibs_4")
;
(pe.mmap_patch_va)(pevars.sigaddr + 11, "\000")
return mp.INFECTED

