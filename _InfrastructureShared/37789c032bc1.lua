-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/37789c032bc1 

-- params : ...
-- function num : 0
if peattributes.is_delphi then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
if (mp.ispackedwith)("AutoHotKey_+") then
  return mp.CLEAN
end
if (mp.ispackedwith)("AutoIt_+") or (mp.get_mpattributesubstring)("Win32/AutoIt") or (mp.get_mpattributesubstring)("PESTATIC:cleanstub_autoitv") then
  local l_0_0, l_0_1, l_0_2 = nil, nil, nil
  if (hstrlog[1]).matched then
    l_0_2 = (hstrlog[1]).match_offsets_count
    if l_0_2 >= 6 then
      l_0_1 = ((hstrlog[1]).match_offsets)[4]
      l_0_0 = (hstrlog[1]).VA + l_0_1
      local l_0_3 = (mp.readu_u32)((pe.mmap_va)(l_0_0, 4), 1)
      if (mp.readu_u32)((pe.mmap_va)(l_0_3, 4), 1) ~= 1162627398 then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

