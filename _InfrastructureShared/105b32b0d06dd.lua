-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/105b32b0d06dd 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\windows\\system32\\MicrosoftEdgeSH.exe", 1, true) or (string.find)(l_0_0, "\\windows\\system32\\svchost.exe", 1, true) or (string.find)(l_0_0, "\\windows\\system32\\Windows.WARP.JITService.exe", 1, true) or (string.find)(l_0_0, "\\windows\\system32\\csrss.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

