-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Kovter.A 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_1:sub(-42, -8) == "\\local settings\\application data\\kb" or l_0_1:sub(-24, -8) == "\\appdata\\local\\kb" then
    l_0_1 = l_0_1:sub(-9)
    local l_0_2 = (string.lower)((string.sub)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME), 0, -5))
    if l_0_1 == l_0_2 then
      (mp.set_mpattribute)("Lua:Kovter.A")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

