-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4ab3d8816bd5 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSIsRemoteSession)
if l_0_1 then
  local l_0_2 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSUserName)
  if (MpCommon.QueryPersistContextNoPath)("MpNewRemoteUsers", l_0_2) then
    local l_0_3 = (this_sigattrlog[1]).utf8p1
    if l_0_3 then
      l_0_3 = (string.lower)(l_0_3)
      if (string.find)(l_0_3, "vcredist_x64.exe", -16, true) or (string.find)(l_0_3, "vcredist_x86.exe", -16, true) or (string.find)(l_0_3, "GL.....%.tmp", -12) then
        return mp.CLEAN
      end
      if (mp.IsKnownFriendlyFile)(l_0_3, false, false) then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

