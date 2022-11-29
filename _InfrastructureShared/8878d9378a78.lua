-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8878d9378a78 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 4000000 or l_0_0 < 4000 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("pea_ismsil") then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("program files", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("system32", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("syswow64", 1, true) then
  return mp.CLEAN
end
if (hstrlog[1]).matched and (hstrlog[1]).match_offsets_count == 3 then
  local l_0_2 = (pe.mmap_va)((hstrlog[1]).VA, ((hstrlog[1]).match_offsets)[2])
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = (string.find)(l_0_2, "\255\021", 1, true)
  if l_0_3 ~= nil then
    return mp.CLEAN
  end
  local l_0_4 = (pe.query_import)(pe.IMPORT_STATIC, 2307734577)
  if l_0_4 ~= 0 then
    local l_0_5 = (hstrlog[1]).VA + ((hstrlog[1]).match_offsets)[3]
    if l_0_5 + 4 + (mp.readu_u32)((pe.mmap_va)(l_0_5, 4), 1) == l_0_4 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

