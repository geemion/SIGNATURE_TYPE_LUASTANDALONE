-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_AutoitLargeRsrcSec 

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
if (pesecs[1]).Name ~= ".text" then
  return mp.CLEAN
end
if (mp.ispackedwith)("AutoIt_+") or (mp.get_mpattributesubstring)("Win32/AutoIt") or (mp.get_mpattributesubstring)("PESTATIC:cleanstub_autoitv") then
  local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).RVA
  local l_0_1 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).Size
  if l_0_0 == 0 then
    return mp.CLEAN
  end
  if l_0_1 >= 3072000 then
    (mp.set_mpattribute)("AutoItIgnoreMaxSizes")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

