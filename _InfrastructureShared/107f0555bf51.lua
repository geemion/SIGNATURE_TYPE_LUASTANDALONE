-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/107f0555bf51 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (pe.get_regval)(pe.REG_ESP) + 4
local l_0_1 = (pe.mmap_va)(l_0_0, 4)
local l_0_2 = (mp.readu_u32)(l_0_1, 1)
l_0_1 = (pe.mmap_va)(l_0_2, 4)
local l_0_3 = (mp.readu_u32)(l_0_1, 1) + 1048576
if l_0_3 ~= 555819297 then
  return mp.CLEAN
end
local l_0_4 = (pe.vm_search)(pevars.sigaddr + 64, pevars.sigaddr + 256, "\000\000\016\000s", nil, pe.VM_SEARCH_BITMASK)
if l_0_4 == nil then
  return mp.LOWFI
end
;
(pe.mmap_patch_va)(l_0_4 + 4, "\235")
local l_0_5, l_0_6, l_0_7, l_0_8 = (mp.bsplit)(l_0_3, 8)
;
(pe.mmap_patch_va)(l_0_2, (string.char)(l_0_5))
;
(pe.mmap_patch_va)(l_0_2 + 1, (string.char)(l_0_6))
;
(pe.mmap_patch_va)(l_0_2 + 2, (string.char)(l_0_7))
;
(pe.mmap_patch_va)(l_0_2 + 3, (string.char)(l_0_8))
return mp.LOWFI

