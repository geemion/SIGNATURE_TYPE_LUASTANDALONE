-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6cb3c5d62702 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).ppid then
  return mp.CLEAN
end
local l_0_0 = (MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[1]).ppid)
if MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_0.IntegrityLevel then
  (bm.trigger_sig)("EOP", "SYSTEM")
end
return mp.CLEAN

