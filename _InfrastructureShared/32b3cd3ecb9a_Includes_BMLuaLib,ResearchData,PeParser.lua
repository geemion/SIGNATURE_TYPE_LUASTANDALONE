-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/32b3cd3ecb9a_Includes_BMLuaLib,ResearchData,PeParser 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (string.lower)((MpCommon.PathToWin32Path)(l_0_0))
local l_0_1, l_0_2, l_0_3 = Get_file_version(l_0_0)
if (string.lower)(l_0_3) ~= "werfaultsecure.exe" then
  return mp.CLEAN
end
local l_0_4 = (crypto.shr64)(l_0_1, 48)
if l_0_4 >= 10 then
  return mp.CLEAN
end
;
(bm.add_related_string)("OriginalFileName_PeParser", Version_to_str(l_0_1), bm.RelatedStringBMReport)
return mp.INFECTED

