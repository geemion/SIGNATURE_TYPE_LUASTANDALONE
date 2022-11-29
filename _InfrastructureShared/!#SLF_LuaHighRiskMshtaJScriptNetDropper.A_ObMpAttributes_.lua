-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_LuaHighRiskMshtaJScriptNetDropper.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "mshta.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_2 = (MpCommon.QueryPersistContext)(l_0_1, "Lua:ExeDroppedByJsc")
if not l_0_2 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:MshtaJScriptNet.A")
local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_4 = (mp.GetProcessCommandLine)(l_0_3)
if l_0_4 ~= nil then
  local l_0_5 = (mp.GetExecutablesFromCommandLine)(l_0_4)
  for l_0_9,l_0_10 in ipairs(l_0_5) do
    l_0_10 = (mp.ContextualExpandEnvironmentVariables)(l_0_10)
    if (sysio.IsFileExists)(l_0_10) and (MpCommon.QueryPersistContext)(l_0_10, "Lua:HighRiskHtaWebVector") then
      return mp.INFECTED
    end
  end
end
do
  l_0_5 = mp
  l_0_5 = l_0_5.CLEAN
  return l_0_5
end

