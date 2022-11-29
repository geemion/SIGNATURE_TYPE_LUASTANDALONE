-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7dd7824f54e4 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((MpCommon.GetImagePathFromPid)((mp.GetScannedPPID)()))
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "RenamedRegExe")
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = {}
;
(table.insert)(l_0_2, "security")
;
(MpCommon.SetPersistContextNoPath)("DumpHive.B!security", l_0_2, 300)
if (MpCommon.GetPersistContextCountNoPath)("DumpHive.B!system") > 0 or (MpCommon.GetPersistContextCountNoPath)("DumpHive.B!sam") > 0 then
  return mp.INFECTED
end
return mp.CLEAN

