-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c953e194270 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr, 40)
local l_0_1 = (string.sub)(l_0_0, 17, 17)
;
(pe.mmap_patch_va)(pevars.sigaddr + 14, "\187" .. l_0_1 .. "\000\000\000")
return mp.INFECTED

