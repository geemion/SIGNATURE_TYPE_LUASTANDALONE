-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_MeterpreterClassifierA_Includes_SetAttributeF 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("RPF:MeterpreterClassifierA")
do
  if l_0_0 ~= nil then
    local l_0_1 = {}
    l_0_1["Lua:MeterpreterClassifierA:95"] = 95
    l_0_1["Lua:MeterpreterClassifierA:90"] = 90
    l_0_1["Lua:MeterpreterClassifierA:80"] = 80
    l_0_1["Lua:MeterpreterClassifierA:70"] = 70
    l_0_1["Lua:MeterpreterClassifierA:60"] = 60
    SetAttributeFromClassifierScores(l_0_0, l_0_1)
  end
  return mp.CLEAN
end

