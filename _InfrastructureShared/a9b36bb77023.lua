-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a9b36bb77023 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or (string.len)(l_0_0) < 1 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\systemsettings.exe", 1, true) or (string.find)(l_0_0, "\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\explorer.exe", 1, true) or (string.find)(l_0_0, "\\openwith.exe", 1, true) or (string.find)(l_0_0, "\\searchprotocolhost.exe", 1, true) or (string.find)(l_0_0, "\\searchindexer.exe", 1, true) or (string.find)(l_0_0, "\\runtimebroker.exe", 1, true) or (string.find)(l_0_0, "\\msiexec.exe", 1, true) or (string.find)(l_0_0, "\\taskhostw.exe", 1, true) or (string.find)(l_0_0, "\\microsoft\\edge", 1, true) or (string.find)(l_0_0, "\\temp\\edgemitmp", 1, true) or (string.find)(l_0_0, "\\winzip", 1, true) or (string.find)(l_0_0, "\\google\\chrome\\", 1, true) or (string.find)(l_0_0, "\\userprofilemanager.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

