-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a7d73a99601c_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2, l_0_3 = nil
if pcall(mp.GetParentProcInfo) and mp.GetParentProcInfo ~= nil then
  l_0_2 = (mp.GetParentProcInfo).ppid
  l_0_3 = (string.lower)((mp.GetParentProcInfo).image_path)
  if l_0_2 ~= nil then
    if IsPidExcluded(l_0_2) then
      return mp.CLEAN
    end
    if l_0_3:find("ltsvc.exe") then
      return mp.CLEAN
    end
    local l_0_4 = nil
    local l_0_5 = nil
    if ({["ccmexec.exe"] = true, ["gpscript.exe"] = true, ["mpcmdrun.exe"] = true, ["mssense.exe"] = true, ["senseir.exe"] = true})[(string.lower)(l_0_3:match("([^\\]+)$"))] then
      return mp.CLEAN
    end
    TrackPidAndTechnique(l_0_2, "T1071.001", "lolbin_web_github")
    if IsDetectionThresholdMet(l_0_2) then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end
do
  return mp.CLEAN
end

