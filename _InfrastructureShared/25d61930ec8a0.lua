-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25d61930ec8a0 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 <= 3997696 and l_0_0 >= 3538944 and (mp.get_mpattribute)("NID:GolangSnake") then
  return mp.INFECTED
end
return mp.CLEAN

