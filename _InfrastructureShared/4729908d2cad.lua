-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4729908d2cad 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_0, "extensions") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
