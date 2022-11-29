-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Context_FileUnderCommonPaths_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
do
  if l_0_0 ~= nil and l_0_0:len() > 60 then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.match)(l_0_1, "\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\ie\\.+") then
      (mp.set_mpattribute)("Lua:Context/FileInINetCacheIE.A")
    end
    if (string.find)(l_0_1, "\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil then
      (mp.set_mpattribute)("Lua:FileInOutlookCache.A")
    end
    if (string.match)(l_0_1, "\\users\\[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\low\\ie\\.+") then
      (mp.set_mpattribute)("Lua:Context/FileInINetCacheLowIE.A")
    end
    if (string.find)(l_0_1, "\\appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\", 1, true) ~= nil then
      (mp.set_mpattribute)("Lua:FileInWindowsMailApp.A")
    end
  end
  return mp.CLEAN
end

