-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5fd7ab720eaa_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = ""
if (string.sub)(l_0_1, -1) == "\"" then
  l_0_2 = (string.match)(l_0_1, "-destination (\"[^\"]+\")[%s]*")
else
  l_0_2 = (string.match)(l_0_1, "-destination (%S+)[%s]*")
end
if l_0_2 == "" or l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = 600
if not (MpCommon.QueryPersistContext)(l_0_2, "BitsadminTarget") then
  (MpCommon.AppendPersistContext)(l_0_2, "BitsadminTarget", l_0_3)
end
if IsTechniqueObservedForParents(l_0_0, "T1047", 2) or IsTechniqueObservedForParents(l_0_0, "T1021.006", 2) then
  return mp.INFECTED
end
return mp.LOWFI

