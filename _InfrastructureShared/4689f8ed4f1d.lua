-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4689f8ed4f1d 

-- params : ...
-- function num : 0
local l_0_0 = (string.byte)((pe.mmap_va)(pevars.sigaddr + 4, 1), 1)
local l_0_1 = 0
local l_0_2 = (string.byte)((pe.mmap_va)(pevars.sigaddr + 5 + l_0_0 + 1, 1), 1)
if l_0_2 == 184 then
  l_0_1 = 11
else
  l_0_1 = (string.find)((pe.mmap_va)(pevars.sigaddr + l_0_0, 64), "��\000\000\002\000", 1, true) - 1
end
;
(pe.mmap_patch_va)(pevars.sigaddr + (l_0_1) + l_0_0, "������")
return mp.INFECTED

