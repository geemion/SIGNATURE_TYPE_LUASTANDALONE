-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/63610642cc02 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == false and l_0_0 <= 589824 and l_0_0 >= 458752 then
  return mp.INFECTED
end
return mp.CLEAN

