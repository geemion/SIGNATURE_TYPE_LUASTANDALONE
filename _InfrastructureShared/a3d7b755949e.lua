-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a3d7b755949e 

-- params : ...
-- function num : 0
local l_0_0 = {}
;
(table.insert)(l_0_0, "system")
;
(MpCommon.SetPersistContextNoPath)("DumpHive.A!system", l_0_0, 300)
if (MpCommon.GetPersistContextCountNoPath)("DumpHive.A!security") > 0 or (MpCommon.GetPersistContextCountNoPath)("DumpHive.A!sam") > 0 then
  return mp.INFECTED
end
return mp.CLEAN

