-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d9b32e2aa4d8 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "\\java.exe", 1, true) or (string.find)(l_0_0, "\\javaw.exe", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN

