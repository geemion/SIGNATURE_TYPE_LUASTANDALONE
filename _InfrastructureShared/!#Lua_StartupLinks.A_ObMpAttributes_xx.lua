-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_StartupLinks.A_ObMpAttributes_xx 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (string.lower)((mp.getfilename)())
  if (string.match)(l_0_1, "\\microsoft\\windows\\start menu\\programs\\startup.*%.lnk") ~= nil then
    local l_0_2 = (string.lower)(tostring(headerpage))
    local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_2)
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
      if (sysio.IsFileExists)(l_0_8) then
        (mp.ReportLowfi)(l_0_8, 2199264473)
      end
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

