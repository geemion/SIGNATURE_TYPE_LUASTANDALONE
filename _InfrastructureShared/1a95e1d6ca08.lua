-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a95e1d6ca08 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 40)
local l_0_1 = (string.sub)(l_0_0, 14, 14)
;
(pe.mmap_patch_va)(pevars.sigaddr + 11, "\187" .. l_0_1 .. "\000\000\000��\144")
return mp.INFECTED

