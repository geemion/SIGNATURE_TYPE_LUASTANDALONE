-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Lua_ContextualColisiLoader 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if (l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isdll then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 < 51200 or l_0_1 > 102400 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if l_0_2 ~= "chrome.dll" then
    return mp.CLEAN
  end
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_3:sub(-26) ~= "\\google\\chrome\\application" then
    return mp.CLEAN
  end
  if l_0_3:find("\\program files", 1, true) == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

