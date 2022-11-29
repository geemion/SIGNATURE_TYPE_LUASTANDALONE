-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3fe12197a 

-- params : ...
-- function num : 0
if not (this_sigattrlog[4]).matched then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
if not l_0_0 or l_0_0.integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[4]).utf8p1))
if l_0_1 then
  if (string.find)(l_0_1, "windows\\assembly\\nativeimages_v4", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_1, "packagemanagement\\providerassemblies\\nuget", 1, true) then
    return mp.CLEAN
  end
  if not (mp.IsKnownFriendlyFile)(l_0_1, false, false) then
    (mp.ReportLowfi)(l_0_1, 2040612934)
  end
end
return mp.INFECTED

