-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/73787d288a7c 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)((pe.mmap_va)((mp.readu_u32)((pe.mmap_va)((hstrlog[1]).VA + 11, 4), 1), 4), 1)
local l_0_1 = (pe.get_api_id)(l_0_0)
do
  if l_0_1 == 137326890 then
    local l_0_2 = (mp.readu_u32)((pe.mmap_va)((hstrlog[1]).VA + 5, 4), 1)
    if (mp.utf16to8)((pe.mmap_va)(l_0_2, 12)) == "12345\000" then
      l_0_2 = (mp.readu_u32)((pe.mmap_va)((hstrlog[1]).VA + 16, 4), 1)
      if (mp.utf16to8)((pe.mmap_va)(l_0_2, 14)) == "string\000" then
        l_0_2 = (mp.readu_u32)((pe.mmap_va)((hstrlog[1]).VA + 27, 4), 1)
        if (pe.mmap_va)(l_0_2, 6) == "12345\000" then
          return mp.INFECTED
        end
      end
    end
  end
  return mp.CLEAN
end

