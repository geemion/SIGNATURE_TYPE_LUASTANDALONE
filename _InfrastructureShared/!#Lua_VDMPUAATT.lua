-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VDMPUAATT 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("PUA:Block:") or (mp.get_mpattributesubstring)("PUA:ML:Blocked:") or (mp.get_mpattributesubstring)("PUA:IRST:Block:") then
  return mp.INFECTED
end
return mp.CLEAN

