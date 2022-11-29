-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/66d7ed71deff 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil or (string.find)(l_0_1, "stop", 1, true) == nil and (string.find)(l_0_1, "disabled", 1, true) == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.lower)(l_0_2.image_path)
if l_0_3:match("([^\\]+)$") == "su64.exe" or l_0_3:match("([^\\]+)$") == "su32.exe" then
  return mp.INFECTED
end
return mp.CLEAN

