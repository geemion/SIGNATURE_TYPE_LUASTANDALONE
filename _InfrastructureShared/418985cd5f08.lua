-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/418985cd5f08 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("lua_codepatch_obfuscatorALG") == false then
  return mp.CLEAN
end
local l_0_0 = ((pe.mmap_va)(pevars.sigaddr + 12, 6))
local l_0_1, l_0_2, l_0_3 = nil, nil, nil
if (string.byte)(l_0_0, 1) == 116 then
  l_0_1 = (string.byte)(l_0_0, 2)
  l_0_2 = pevars.sigaddr + 14
else
  l_0_1 = (mp.readu_u32)(l_0_0, 3)
  l_0_2 = pevars.sigaddr + 18
end
if (mp.bitand)(l_0_1, 16777216) ~= 0 then
  l_0_3 = l_0_2 - (mp.bitxor)(l_0_1, 4294967295) - 1
else
  l_0_3 = l_0_1 + (l_0_2)
end
local l_0_4 = 0
local l_0_5 = (pe.mmap_va)(l_0_3, 9)
while (string.byte)(l_0_5, 1) == 106 do
  local l_0_6 = (mp.readu_u32)(l_0_5, 6)
  local l_0_7, l_0_8, l_0_9, l_0_10 = (mp.bsplit)(l_0_6, 8)
  local l_0_11 = "�}\f" .. (string.char)(l_0_7, l_0_8, l_0_9, l_0_10) .. "\144\003\004\005t\144\001\001\015��\001\004\144\002`\255u\020\255u\016\255u\f\255u\b\255\021\144\000"
  local l_0_12 = (pe.vm_search)(pevars.sigaddr - 1024, pevars.sigaddr, l_0_11, nil, pe.VM_SEARCH_BM)
  if l_0_12 == 4294967295 then
    return mp.CLEAN
  end
  local l_0_13 = ((pe.mmap_va)(l_0_12 + 7, 6))
  local l_0_14 = nil
  if (string.byte)(l_0_13, 1) == 116 then
    l_0_14 = (string.byte)(l_0_13, 2) + 2
  else
    l_0_14 = (mp.readu_u32)(l_0_13, 3) + 6
  end
  l_0_4 = l_0_12 + 7 + (l_0_14)
  l_0_5 = (pe.mmap_va)(l_0_4, 9)
end
do
  if l_0_4 == 0 then
    return mp.CLEAN
  end
  local l_0_15 = l_0_4 - (l_0_3 + 5)
  local l_0_16, l_0_17, l_0_18, l_0_19 = (mp.bsplit)(l_0_15, 8)
  local l_0_20 = "\233" .. (string.char)(l_0_16, l_0_17, l_0_18, l_0_19)
  ;
  (pe.mmap_patch_va)(l_0_3, l_0_20)
  return mp.INFECTED
end

