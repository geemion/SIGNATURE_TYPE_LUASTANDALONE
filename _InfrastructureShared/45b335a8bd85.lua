-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b335a8bd85 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -13) == "\\iexplore.exe" or (string.sub)(l_0_0, -11) == "\\chrome.exe" or (string.sub)(l_0_0, -18) == "\\microsoftedge.exe" or (string.sub)(l_0_0, -20) == "\\microsoftedgecp.exe" or (string.sub)(l_0_0, -12) == "\\firefox.exe" then
  return mp.CLEAN
end
return mp.INFECTED

