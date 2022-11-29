-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ContextualDropFile 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
  if (string.sub)(l_0_2, -4) ~= ".exe" then
    return mp.CLEAN
  end
  if (string.sub)(l_0_1, -10) == "\\downloads" or l_0_1:find("\\temporary internet files\\", 1, true) ~= nil or l_0_1:find("\\inetcache\\", 1, true) ~= nil then
    return mp.CLEAN
  end
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_3 == "iexplore.exe" then
    (mp.set_mpattribute)("Lua:ContextualDropFileIE")
  else
    if l_0_3 == "chrome.exe" then
      (mp.set_mpattribute)("Lua:ContextualDropFileChrome")
    else
      if l_0_3 == "firefox.exe" then
        (mp.set_mpattribute)("Lua:ContextualDropFileFirefox")
      else
        if l_0_3 == "opera.exe" then
          (mp.set_mpattribute)("Lua:ContextualDropFileOpera")
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

