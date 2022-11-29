-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_InterestringRTPProcess 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  local l_0_2 = {}
  l_0_2["cscript.exe"] = true
  l_0_2["wscript.exe"] = true
  l_0_2["powershell.exe"] = true
  l_0_2["cmd.exe"] = true
  if l_0_2[l_0_1] == true then
    (mp.set_mpattribute)("LuaIntproc!" .. l_0_1)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

