-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3b62b0479_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)((string.lower)(l_0_0), "\\program files", 1, true) or (string.find)((string.lower)(l_0_0), "teamviewer", 1, true) or (string.find)((string.lower)(l_0_0), "\\windows\\", 1, true) or (string.find)((string.lower)(l_0_0), "g2mcomm.exe", 1, true) or (string.find)((string.lower)(l_0_0), "teams", 1, true) or (string.find)((string.lower)(l_0_0), "wintrv.exe", 1, true) or (string.find)((string.lower)(l_0_0), "explorer.exe", 1, true) or (string.find)((string.lower)(l_0_0), "userinit.exe", 1, true) or (string.find)((string.lower)(l_0_0), "lunc.exe", 1, true) or (string.find)((string.lower)(l_0_0), "lync.exe", 1, true) or (string.find)((string.lower)(l_0_0), "youdaodict.exe", 1, true)) then
  return mp.CLEAN
end
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  l_0_1 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1))
end
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  l_0_2 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p1))
end
if l_0_2 ~= nil and l_0_1 ~= nil and (string.find)(l_0_2, l_0_1, 1, true) and IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN

