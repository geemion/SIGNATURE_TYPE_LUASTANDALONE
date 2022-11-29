-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#UefiSystemBootloaderChecks_ObMpAttributes_x 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.QuerySymbolicLinkObject)("\\??\\globalroot\\device\\SystemPartition")
if not l_0_0 then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1, l_0_2 = (string.find)(l_0_0, "\\device\\", 1, true)
if l_0_2 then
  l_0_0 = (string.sub)(l_0_0, l_0_2)
end
local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not (string.find)(l_0_3, l_0_0, 1, true) then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  if (mp.IsTrustedFile)(false) == false then
    (mp.set_mpattribute)("Lua:BootloaderInvalidSig")
  else
    if (mp.IsTrustedFile)(true) == false then
      (mp.set_mpattribute)("Lua:BootloaderUntrustedPub")
    end
  end
else
  ;
  (mp.set_mpattribute)("Lua:BootloaderUnsigned")
end
return mp.CLEAN

