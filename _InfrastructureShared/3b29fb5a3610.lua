-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3b29fb5a3610 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("\\extensions", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("\\inetcache", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

