-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LuaContextualVBAOfficeAMSIOriginalDetectedFile_ObMpAttributes_ 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpContentDetected") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_0 and (sysio.IsFileExists)(l_0_1) then
  (mp.ReportLowfi)(l_0_1, 1609762853)
  return mp.INFECTED
end
return mp.CLEAN

