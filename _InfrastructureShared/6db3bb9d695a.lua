-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6db3bb9d695a 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if #l_0_0 >= 10 and l_0_0:sub(-10) == "\\lsass.exe" then
  return mp.INFECTED
end
return mp.CLEAN

