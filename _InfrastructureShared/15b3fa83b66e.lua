-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3fa83b66e 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 ~= nil and (string.find)(l_0_0, "\\wsmprovhost.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

