-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b89130eefca 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)((pe.get_regval)(pe.REG_EIP) + 9, "\000\016\000\000")
;
(pe.mmap_patch_va)((pe.get_regval)(pe.REG_EIP) + 46, "\000\016\000\000")
return mp.INFECTED

