-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3a78ef3dbbbf_Flags_1 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:Backdoor:Win32/Delfdoorlib") == false then
  return mp.LOWFI
end
if mp.HSTR_WEIGHT >= 3 and (pe.query_import)(pe.IMPORT_STATIC, 2946926388) then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 and (mp.get_mpattribute)("SIGATTR:ASEP") then
  return mp.INFECTED
end
return mp.CLEAN

