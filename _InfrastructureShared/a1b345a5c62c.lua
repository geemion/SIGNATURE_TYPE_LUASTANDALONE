-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1b345a5c62c 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < l_0_0.integrity_level then
  return mp.CLEAN
end
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < ((MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_0.ppid)).IntegrityLevel then
  return mp.CLEAN
end
return mp.INFECTED

