-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#MSIBinaryChecks_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (string.match)(l_0_0, "%->binary%.(.+)$")
if not l_0_0 or l_0_0 == "" then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("//Lua:MSIBinary:" .. l_0_0)
return mp.CLEAN

