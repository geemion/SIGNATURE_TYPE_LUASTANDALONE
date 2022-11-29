-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_GlbFileInOfficeFile.A_Includes_ResearchData_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if (string.find)(l_0_0, "->word/media/", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = 16
if mp.HEADERPAGE_SZ <= l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (mp.readu_u32)(headerpage, 9)
if l_0_2 == nil or l_0_2 <= l_0_1 or mp.HEADERPAGE_SZ < l_0_2 then
  return mp.CLEAN
end
local l_0_3 = tostring(headerpage)
if l_0_3 == nil or #l_0_3 < 288 then
  return mp.CLEAN
end
local l_0_4 = (string.match)(l_0_3, "data%:application%/gltf%-buffer%;base64%,(.-)\"")
if l_0_4 == nil or #l_0_4 < 144 then
  return mp.CLEAN
end
local l_0_5 = (MpCommon.Base64Decode)(l_0_4)
if l_0_5 == nil then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:GlbInOfficeFileHasBase64.A")
if #l_0_5 <= 253 then
  return mp.CLEAN
end
local l_0_6 = (mp.readu_u32)(l_0_5, 241)
if l_0_6 ~= nil and l_0_6 == 286331153 then
  (mp.set_mpattribute)("Lua:GlbInOfficeFileHasSuspOffsetF0.A")
end
local l_0_7 = (mp.readu_u32)(l_0_5, 249)
if l_0_7 ~= nil and l_0_7 == 1094795585 then
  (mp.set_mpattribute)("Lua:GlbInOfficeFileHasSuspOffsetF8.A")
end
return mp.CLEAN

