-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/88b3471cd6bf 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0:len() >= 12 and (string.sub)(l_0_0, -12) == "iexplore.exe" then
  return mp.CLEAN
end
return mp.INFECTED

