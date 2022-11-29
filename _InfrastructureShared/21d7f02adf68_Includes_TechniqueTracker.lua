-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/21d7f02adf68_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() then
  return mp.CLEAN
end
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil or IsTechniqueObservedForPid(l_0_0, "ttexclusion") then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
if IsCommandLineTracked(l_0_1, "PersistenceRegistryPowershellBlock") == true then
  return mp.INFECTED
end
return mp.CLEAN

