-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/abd7e392ecbf 

-- params : ...
-- function num : 0
local l_0_0 = {}
;
(table.insert)(l_0_0, "security")
;
(MpCommon.SetPersistContextNoPath)("DumpHive.A!security", l_0_0, 300)
if (MpCommon.GetPersistContextCountNoPath)("DumpHive.A!system") > 0 or (MpCommon.GetPersistContextCountNoPath)("DumpHive.A!sam") > 0 then
  return mp.INFECTED
end
return mp.CLEAN

