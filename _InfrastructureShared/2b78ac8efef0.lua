-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b78ac8efef0 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security and l_0_0 > 290816 and l_0_0 < 589824 then
  return mp.INFECTED
end
return mp.CLEAN

