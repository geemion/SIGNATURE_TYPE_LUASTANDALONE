-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/17bb3ab835795 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -11) == "svchost.exe" then
  return mp.CLEAN
end
return mp.INFECTED

