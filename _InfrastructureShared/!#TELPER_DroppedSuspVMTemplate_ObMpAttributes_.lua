-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TELPER_DroppedSuspVMTemplate_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  return mp.CLEAN
end
if (string.lower)((string.sub)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME), -3)) ~= ".vm" then
  return mp.CLEAN
end
if (string.find)((string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)), "atlassian\\confluence\\extra\\widgetconnector\\templates", 1, true) then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
if not (MpCommon.QueryPersistContext)(l_0_0, "DroppedSuspVMTemplate") then
  (MpCommon.AppendPersistContext)(l_0_0, "DroppedSuspVMTemplate", 0)
end
return mp.CLEAN

