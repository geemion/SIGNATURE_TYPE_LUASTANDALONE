-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/47781e904461 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpHasValidProjPath") and (mp.get_mpattribute)("pea_hasappendeddata") and peattributes.isexe then
  return mp.LOWFI
end
return mp.CLEAN

