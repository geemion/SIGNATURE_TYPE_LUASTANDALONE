-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/be78d8557d8d 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  if (string.find)(l_0_0, "\\program files", 1, true) ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN

