-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/978f179352e3 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MACRO_HSTR:OfficeAutoOpen") and (mp.get_mpattribute)("MACRO_HSTR:PowerShell") then
  return mp.INFECTED
end
return mp.CLEAN

