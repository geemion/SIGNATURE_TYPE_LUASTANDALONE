-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ScriptEngineScriptEtcContext_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_0 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
local l_0_1 = l_0_0:match("[^\\]+$")
local l_0_2 = {}
l_0_2["iexplore.exe"] = ""
l_0_2["chrome.exe"] = ""
l_0_2["firefox.exe"] = ""
local l_0_3 = {}
l_0_3["wscript.exe"] = ""
l_0_3["cscript.exe"] = ""
if l_0_1 == nil or l_0_2[l_0_1] then
  return mp.CLEAN
end
if l_0_3[l_0_1] then
  return mp.INFECTED
end
return mp.CLEAN

