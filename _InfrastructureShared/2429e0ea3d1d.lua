-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2429e0ea3d1d 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("//AGGR:OleFile") and not (mp.get_mpattribute)("Lua:FileSizeLT2000") then
  return mp.CLEAN
end
local l_0_0 = (string.lower)(tostring(headerpage))
local l_0_1, l_0_2, l_0_3 = (string.find)(l_0_0, "(<a href%=\"http%://.-\">https%://dhl24%.com%.uk/)")
if l_0_3 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_3, "<a href%=\"https%://dhl24%.com%.uk/.-\">https%://dhl24%.com%.uk/") == nil then
  return mp.INFECTED
end
return mp.CLEAN

