-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b9b31bd69e45 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\mmc.exe") then
  return mp.CLEAN
else
  if (string.find)(l_0_0, "\\officeclicktorun.exe") then
    return mp.CLEAN
  end
end
return mp.INFECTED

