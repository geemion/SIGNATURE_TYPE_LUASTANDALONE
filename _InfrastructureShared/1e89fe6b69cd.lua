-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1e89fe6b69cd 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 1, 4)
local l_0_1 = (mp.readu_u32)(l_0_0, 1)
if l_0_1 > 65536 then
  (pe.mmap_patch_va)(pevars.sigaddr + 17, "\000")
end
return mp.CLEAN

