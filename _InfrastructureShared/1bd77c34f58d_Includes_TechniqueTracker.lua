-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1bd77c34f58d_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["monitoringhost.exe"] = true
  l_0_3["query.exe"] = true
  l_0_3["taniumfileinfo.exe"] = true
  l_0_3["taniumclient.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1033", "session_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  return mp.LOWFI
end

