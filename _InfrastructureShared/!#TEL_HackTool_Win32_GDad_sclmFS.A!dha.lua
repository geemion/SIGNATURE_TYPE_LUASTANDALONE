-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_HackTool_Win32_GDad_sclmFS.A!dha 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "File" then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.len ~= 8 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "sclm.dll", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

