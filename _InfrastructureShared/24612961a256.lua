-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/24612961a256 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.hasexports == true and l_0_0 >= 100000 and l_0_0 <= 300000 then
  return mp.INFECTED
end
return mp.CLEAN

