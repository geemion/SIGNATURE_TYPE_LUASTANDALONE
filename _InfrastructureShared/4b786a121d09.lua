-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4b786a121d09 

-- params : ...
-- function num : 0
if (hstrlog[2]).matched then
  local l_0_0 = (mp.readu_u32)((pe.mmap_va)((hstrlog[2]).VA + 9, 4), 1)
  local l_0_1 = (mp.bitand)(l_0_0 + (hstrlog[2]).VA + 13, 4294967295)
  local l_0_2 = (pe.mmap_va)(l_0_1, 1)
  if l_0_2 == "h" then
    (mp.set_mpattribute)("PUA:Block:InstallCore")
    return mp.INFECTED
  end
  l_0_0 = (mp.readu_u32)((pe.mmap_va)((hstrlog[2]).VA + 14, 4), 1)
  l_0_1 = (mp.bitand)(l_0_0 + (hstrlog[2]).VA + 18, 4294967295)
  local l_0_3 = (pe.mmap_va)(l_0_1, 10)
  local l_0_4 = (string.find)(l_0_3, "\233..\255\255")
  if l_0_4 ~= nil then
    l_0_0 = (mp.readu_u32)((pe.mmap_va)(l_0_1 + l_0_4, 4), 1)
    l_0_1 = (mp.bitand)(l_0_0 + l_0_1 + l_0_4 + 5 - 1, 4294967295)
  end
  l_0_2 = (pe.mmap_va)(l_0_1, 1)
  if l_0_2 == "h" or l_0_2 >= "\185" and l_0_2 < "\192" then
    (mp.set_mpattribute)("PUA:Block:InstallCore")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

