-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ContextDataProcessName3 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_AMSI then
  local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
  if l_0_0 and l_0_1 ~= nil then
    (mp.set_mpattribute)("Lua:AmsiAppContextDataPresent")
    ;
    (mp.set_mpattribute)("Lua:AmsiAppContextData:Proc:" .. l_0_1)
  end
  local l_0_2, l_0_3 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if l_0_2 and l_0_3 ~= nil then
    (mp.set_mpattribute)("Lua:AmsiAppContextData:File:" .. l_0_3)
  end
end
do
  return mp.CLEAN
end

