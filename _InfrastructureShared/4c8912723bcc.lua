-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4c8912723bcc 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_EBP) + 8, 4), 1)
local l_0_1 = (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_EBP) + 12, 4), 1)
local l_0_2 = (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_EBP) + 16, 4), 1)
local l_0_3 = (mp.readu_u32)((pe.mmap_va)((pe.get_regval)(pe.REG_EBP) + 20, 4), 1)
if l_0_0 ~= 2089811968 or l_0_1 ~= 0 or l_0_3 ~= 8 then
  return mp.CLEAN
end
if l_0_2 == pehdr.ImageBase + (pesecs[1]).VirtualAddress then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.set_peattribute)("hstr_exhaustive", true)
  return mp.INFECTED
end
return mp.CLEAN

