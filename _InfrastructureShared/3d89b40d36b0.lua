-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3d89b40d36b0 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)(pevars.sigaddr + 3, 4), 1), 4), 1)
local l_0_1 = (pe.get_api_id)(l_0_0)
if l_0_1 ~= 3267971814 then
  return mp.CLEAN
end
;
(pe.mmap_patch_va)(pevars.sigaddr + 34, "��")
return mp.INFECTED

