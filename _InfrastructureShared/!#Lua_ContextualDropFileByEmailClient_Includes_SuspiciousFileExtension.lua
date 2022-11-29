-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ContextualDropFileByEmailClient_Includes_SuspiciousFileExtension 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_1 == "outlook.exe" then
    local l_0_2 = "Lua:ContextualDropFileOutlook"
    local l_0_3 = GetSuspiciuousFileType((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if l_0_4:find("\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil or l_0_4:find("\\microsoft\\windows\\inetcache\\ie\\", 1, true) ~= nil or l_0_4:find("%internet_cache%\\content.outlook\\", 1, true) ~= nil then
      l_0_2 = l_0_2 .. "Default"
    else
      l_0_2 = l_0_2 .. "Ext"
    end
    if l_0_3 then
      l_0_2 = l_0_2 .. l_0_3
    else
      l_0_2 = l_0_2 .. "Any"
    end
    ;
    (mp.set_mpattribute)(l_0_2)
  end
end
do
  return mp.CLEAN
end

