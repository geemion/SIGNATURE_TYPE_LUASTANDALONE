-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/858c1d86315c 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("mroot", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("temproot", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("-root", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

