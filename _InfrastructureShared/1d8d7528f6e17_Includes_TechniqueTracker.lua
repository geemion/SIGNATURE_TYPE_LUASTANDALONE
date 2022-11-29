-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d8d7528f6e17_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil and l_0_0.image_path ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("\\([^\\]+)$")
  local l_0_3 = {}
  l_0_3["movere.bot4.local.exe"] = true
  l_0_3["sqlagent.exe"] = true
  l_0_3["acroinst2.exe"] = true
  l_0_3["kagentsilent.exe"] = true
  l_0_3["taddmwmi.exe"] = true
  l_0_3["madservice.exe"] = true
  l_0_3["ccmexec.exe"] = true
  l_0_3["gpscript.exe"] = true
  l_0_3["mpcmdrun.exe"] = true
  l_0_3["mssense.exe"] = true
  l_0_3["senseir.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
  local l_0_4 = GetRealPidForScenario("CMDHSTR")
  if IsPidExcluded(l_0_4) then
    return mp.CLEAN
  end
  if IsDetectionThresholdMet(l_0_4) and (IsTacticObservedForPid(l_0_4, "remoteservice-target") or IsTacticObservedForPid(l_0_4, "wmi_childproc") or IsTechniqueObservedForPid(l_0_4, "T1021.006")) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

