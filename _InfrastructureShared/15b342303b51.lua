-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b342303b51 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.match)(l_0_0, "\\outlook.exe$") or (string.match)(l_0_0, "\\olk.exe$") then
  return mp.INFECTED
end
return mp.CLEAN

