-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/adb3468d23c5_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcallEx("isCurrentProcessFriendly", isCurrentProcessFriendly)
if not l_0_0 then
  reportPcallEx()
  l_0_1 = false
end
if l_0_1 then
  return mp.CLEAN
end
;
(bm.add_action)("EmsScan", 5000)
return mp.INFECTED

