-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_ChromeParamLnk_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if (string.sub)(l_0_1, 1, 17) == "google chrome.lnk" and (l_0_0:find("\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil or (string.sub)(l_0_0, -20) == "\\start menu\\programs" or (string.sub)(l_0_0, -8) == "\\desktop") then
  return mp.INFECTED
end
return mp.CLEAN

