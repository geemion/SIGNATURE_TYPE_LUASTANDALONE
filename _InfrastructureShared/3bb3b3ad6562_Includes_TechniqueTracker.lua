-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3bb3b3ad6562_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)((string.lower)(l_0_0), "\\program files", 1, true) or (string.find)((string.lower)(l_0_0), "teamviewer", 1, true) or (string.find)((string.lower)(l_0_0), "\\windows\\", 1, true) or (string.find)((string.lower)(l_0_0), "g2mcomm.exe", 1, true) or (string.find)((string.lower)(l_0_0), "teams", 1, true) or (string.find)((string.lower)(l_0_0), "wintrv.exe", 1, true) or (string.find)((string.lower)(l_0_0), "explorer.exe", 1, true) or (string.find)((string.lower)(l_0_0), "lunc.exe", 1, true) or (string.find)((string.lower)(l_0_0), "lync.exe", 1, true) or (string.find)((string.lower)(l_0_0), "rdcman.exe", 1, true) or (string.find)((string.lower)(l_0_0), "youdaodict.exe", 1, true)) then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN

