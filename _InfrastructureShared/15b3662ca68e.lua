-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3662ca68e 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  if (string.sub)(l_0_0, -10) ~= "chrome.exe" and (string.sub)(l_0_0, -12) ~= "iexplore.exe" and (string.sub)(l_0_0, -11) ~= "firefox.exe" and (string.sub)(l_0_0, -10) ~= "safari.exe" and (string.sub)(l_0_0, -17) ~= "microsoftedge.exe" and (string.sub)(l_0_0, -19) ~= "microsoftedgecp.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN

