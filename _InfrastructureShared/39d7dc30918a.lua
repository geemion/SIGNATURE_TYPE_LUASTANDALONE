-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/39d7dc30918a 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.GetPersistContextNoPath)("dllhijack_winbio_A")
if l_0_0 and next(l_0_0) ~= nil and l_0_0[2] ~= nil and (sysio.IsFileExists)(l_0_0[2]) then
  return mp.INFECTED
end
return mp.CLEAN

