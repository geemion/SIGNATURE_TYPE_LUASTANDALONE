-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#BM_RansomNote_Gen.C_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and l_0_0 >= 5120 then
  return mp.CLEAN
end
local l_0_1 = (mp.enum_mpattributesubstring)("SCPT:ClnWordsCat1")
local l_0_2 = (mp.enum_mpattributesubstring)("SCPT:ClnWordsCat2")
local l_0_3 = (mp.enum_mpattributesubstring)("SCPT:ClnWordsCat3")
if #l_0_1 >= 1 or #l_0_1 + #l_0_2 >= 5 or #l_0_3 >= 3 then
  return mp.CLEAN
end
local l_0_4 = (mp.enum_mpattributesubstring)("SCPT:RansomNoteCat1")
local l_0_5 = (mp.enum_mpattributesubstring)("SCPT:RansomNoteCat2")
local l_0_6 = (mp.enum_mpattributesubstring)("SCPT:RansomNoteCat3")
local l_0_7 = (mp.enum_mpattributesubstring)("SCPT:RansomNoteCat4")
if #l_0_7 >= 4 and #l_0_4 + #l_0_5 >= 2 and #l_0_6 + #(mp.enum_mpattributesubstring)("SCPT:RansomNoteCat5") + #(mp.enum_mpattributesubstring)("SCPT:RansomNoteCat6") > 3 then
  return mp.INFECTED
end
if (mp.get_mpattribute)("SCPT:RansomRuyk") and #l_0_7 >= 1 and #l_0_6 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

