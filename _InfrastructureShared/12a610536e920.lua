-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12a610536e920 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:find("\\temp\\", 1, true) ~= nil and l_0_0:find("\\system", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN

