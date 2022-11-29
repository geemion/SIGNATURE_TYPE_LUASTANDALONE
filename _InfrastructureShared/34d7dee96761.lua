-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/34d7dee96761 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, ".msc[%s]*$") ~= nil then
  return mp.INFECTED
end
if (string.find)(l_0_1, "-embedding[%s]*$") == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 == nil then
  return mp.CLEAN
end
if (string.lower)((string.match)(l_0_2.image_path, "\\([^\\]+)$")) ~= "svchost.exe" then
  return mp.CLEAN
end
local l_0_3 = (mp.GetProcessCommandLine)(l_0_2.ppid)
if l_0_3 == "" or l_0_3 == nil then
  return mp.CLEAN
end
if (string.find)((string.lower)(l_0_3), "\\svchost%.exe[%s]+-k[%s]+dcomlaunch[%s]*$") then
  return mp.INFECTED
end
return mp.CLEAN

