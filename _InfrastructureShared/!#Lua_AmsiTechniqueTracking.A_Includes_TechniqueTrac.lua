-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_AmsiTechniqueTracking.A_Includes_TechniqueTrac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = "BM_MT"
local l_0_4 = (mp.enum_mpattributesubstring)(l_0_3)
if l_0_4 ~= nil and type(l_0_4) == "table" and #l_0_4 > 0 then
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    local l_0_10 = (string.sub)(l_0_9, #l_0_3, #l_0_9)
    if l_0_10 ~= nil and #l_0_10 >= 5 then
      local l_0_11, l_0_12 = (string.match)(l_0_10, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)")
      if l_0_11 ~= nil then
        AddTechniqueForPid(l_0_2, l_0_11)
      end
      if l_0_12 ~= nil then
        AddTacticForPid(l_0_2, l_0_12)
      end
      l_0_0 = true
    end
  end
end
do
  if l_0_0 and (mp.get_mpattribute)("Lua:CloudBlockLevelGT5") and #l_0_4 > 3 then
    (mp.set_mpattribute)("Lua:AmsiTechniqueTracking")
  end
  return mp.CLEAN
end

