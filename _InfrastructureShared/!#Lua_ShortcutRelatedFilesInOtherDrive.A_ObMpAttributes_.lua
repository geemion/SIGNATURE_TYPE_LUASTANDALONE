-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ShortcutRelatedFilesInOtherDrive.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = tostring(headerpage)
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    local l_0_8 = (string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_7))
    if (sysio.IsFileExists)(l_0_8) then
      (mp.ReportLowfi)(l_0_8, 1875954900)
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

