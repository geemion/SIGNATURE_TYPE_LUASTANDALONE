-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8d782ae7c016 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 500000 or l_0_0 < 10000 then
  return mp.CLEAN
end
if (((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()):find("program files", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

