-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/68e8c3359192d 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("AndroidOS:HSTR:AndroidElf") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 700000 or l_0_0 < 4000 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("adbcopy", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("libbaiduzeus", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("libmiui", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("liboctvm", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("getdbfile", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("\\atcid", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_2:find("root", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

