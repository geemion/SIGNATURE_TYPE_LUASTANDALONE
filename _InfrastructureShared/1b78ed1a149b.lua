-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1b78ed1a149b 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("pea_isdriver") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 400000 or l_0_0 < 10000 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("program files", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

