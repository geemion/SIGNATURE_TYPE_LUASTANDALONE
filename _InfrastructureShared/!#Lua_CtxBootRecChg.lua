-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_CtxBootRecChg 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONWRITE then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
l_0_1 = (l_0_1 == nil and "" or l_0_1):lower()
local l_0_2 = (mp.GetResmgrBasePlugin)()
l_0_2 = (l_0_2 == nil and "" or l_0_2):lower()
if l_0_1 ~= "boot://" and l_0_2 ~= "boot" then
  return mp.CLEAN
end
return mp.INFECTED

