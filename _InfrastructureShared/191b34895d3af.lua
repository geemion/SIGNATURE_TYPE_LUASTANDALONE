-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/191b34895d3af 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)((string.sub)(l_0_0, -12))
  if l_0_0 == "\\svchost.exe" and MpCommon.SECURITY_MANDATORY_MEDIUM_RID < ((bm.get_current_process_startup_info)()).integrity_level then
    return mp.CLEAN
  end
end
return mp.INFECTED

