-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a786c19341e 

-- params : ...
-- function num : 0
local l_0_0 = pehdr.AddressOfEntryPoint + pehdr.ImageBase
local l_0_1, l_0_2 = nil, nil
if (hstrlog[1]).matched then
  l_0_1 = 14
  l_0_2 = (hstrlog[1]).VA
end
local l_0_3 = (pe.mmap_va)(l_0_2, 21)
local l_0_4 = (mp.readu_u32)(l_0_3, l_0_1)
local l_0_5 = l_0_2 + l_0_1 + 3 + l_0_4
l_0_5 = (mp.bitand)(l_0_5, 4294967295)
if l_0_5 == l_0_0 then
  return mp.INFECTED
end
return mp.CLEAN

