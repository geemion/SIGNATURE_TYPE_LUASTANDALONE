-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/123d7c987ed9d_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2, l_0_3 = nil
if pcall(mp.GetParentProcInfo) and mp.GetParentProcInfo ~= nil then
  l_0_2 = (mp.GetParentProcInfo).ppid
  l_0_3 = (mp.GetParentProcInfo).image_path
  local l_0_4 = nil
  local l_0_5 = nil
  local l_0_6 = nil
  if ({["net.exe"] = true, ["ng bailey image collector.exe"] = true, ["ltsvc.exe"] = true})[((string.lower)(l_0_3)):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
do
  if l_0_2 ~= nil and l_0_3 ~= nil then
    TrackPidAndTechnique(l_0_2, "T1087", "account_discovery")
    if IsDetectionThresholdMet(l_0_2) then
      return mp.LOWFI
    end
  end
  return mp.CLEAN
end

