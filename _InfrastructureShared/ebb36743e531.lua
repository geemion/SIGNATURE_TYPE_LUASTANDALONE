-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ebb36743e531 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -7) == "cmd.exe" or (string.sub)(l_0_0, -12) == "explorer.exe" or (string.sub)(l_0_0, -14) == "powershell.exe" or (string.sub)(l_0_0, -12) == "mpcmdrun.exe" then
  return mp.CLEAN
end
return mp.INFECTED

