-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/65784379c1b2 

-- params : ...
-- function num : 0
if (hstrlog[4]).matched then
  local l_0_0 = (hstrlog[4]).VA
  local l_0_1 = (pe.mmap_va)(l_0_0, 16)
  if #l_0_1 == 16 then
    local l_0_2 = (mp.readu_u32)(l_0_1, 7)
    if l_0_2 ~= 0 then
      local l_0_3, l_0_4, l_0_5, l_0_6 = (mp.bsplit)(l_0_2, 8)
      local l_0_7 = "HSTR:Tovicrypt:CnC/" .. l_0_3 .. "." .. l_0_4 .. "." .. l_0_5 .. "." .. l_0_6
      ;
      (mp.set_mpattribute)(l_0_7)
    end
  end
end
do
  return mp.INFECTED
end

