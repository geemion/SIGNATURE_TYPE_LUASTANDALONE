-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3b844852b_Includes_LuaFuncHelper,BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[2]).utf8p2
if (string.find)(l_0_0, ".sh", 1, true) then
  return mp.INFECTED
end
local l_0_1 = 3000000
if l_0_1 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
local l_0_2 = (this_sigattrlog[1]).utf8p1
local l_0_3 = split(l_0_2, "/")
local l_0_4 = l_0_3[#l_0_3]
if (string.find)(l_0_0, l_0_4, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

