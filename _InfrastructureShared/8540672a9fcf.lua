-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8540672a9fcf 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
-- DECOMPILER ERROR at PC17: Unhandled construct in 'MakeBoolean' P3

if (l_0_0 >= 147456 and l_0_0 <= 184320) or l_0_0 < 217088 or l_0_0 >= 131072 and l_0_0 <= 135168 then
  return mp.INFECTED
end
return mp.LOWFI

