-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1b278b0460a41 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("\\windows\\system32\\ime\\", 1, true) then
  return mp.INFECTED
end
if l_0_0:find("\\loadertest", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

