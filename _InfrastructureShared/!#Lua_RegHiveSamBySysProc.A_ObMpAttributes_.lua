-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_RegHiveSamBySysProc.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (string.find)(l_0_0, "\\device\\harddiskvolumeshadowcopy", 1, true) or (string.find)(l_0_0, "\\system volume information\\_restore", 1, true) or (string.find)(l_0_0, "\\ifm\\registry\\", 1, true) or (string.find)(l_0_0, "\\sppcbshivestore\\", 1, true) then
  return mp.CLEAN
end
if (string.sub)(l_0_0, 0, 4) == "\\\\?\\" then
  l_0_0 = (string.sub)(l_0_0, 5)
end
if l_0_0:sub(1, 8) == "\\device\\" then
  l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
  if l_0_0 == nil then
    return mp.CLEAN
  end
  l_0_0 = (string.lower)(l_0_0)
end
local l_0_1 = {}
;
(table.insert)(l_0_1, l_0_0)
;
(MpCommon.SetPersistContextNoPath)("RegHiveSamBySysProc", l_0_1, 0)
return mp.INFECTED

