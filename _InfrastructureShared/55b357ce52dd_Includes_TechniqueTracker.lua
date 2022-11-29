-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b357ce52dd_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "\\netlogon\\", 1, true) or (string.find)(l_0_1, "\\sysvol\\", 1, true) or (string.find)(l_0_1, "/nologo ", 1, true) then
  return mp.CLEAN
end
local l_0_2 = GetTaintLevelHR()
if l_0_2 == nil or l_0_2 ~= "Medium" and l_0_2 ~= "High" then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") and (IsTacticObservedForPid("BM", "processinjection_target") or IsTacticObservedForPid("BM", "discovery")) then
  return mp.INFECTED
end
return mp.CLEAN

