-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/61b310055db3 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 and (string.find)((string.lower)(l_0_0), "\\edge\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN

