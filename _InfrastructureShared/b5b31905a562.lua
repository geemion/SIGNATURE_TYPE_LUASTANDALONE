-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b5b31905a562 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -18) == "\\processhacker.exe" then
  return mp.CLEAN
end
return mp.INFECTED

