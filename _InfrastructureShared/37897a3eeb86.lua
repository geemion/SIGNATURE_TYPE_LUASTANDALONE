-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/37897a3eeb86 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 15, "\235\024")
;
(mp.set_mpattribute)("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED

