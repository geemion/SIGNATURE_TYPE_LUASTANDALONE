-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_MpEnableAggressiveSignatures!func 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 2) == true then
  (mp.set_mpattribute)("Lua:MpEnableAggressiveSignatures")
end
return mp.CLEAN

