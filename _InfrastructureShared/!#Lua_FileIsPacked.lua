-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_FileIsPacked 

-- params : ...
-- function num : 0
if (mp.ispackedwith)("UPX_+") then
  (mp.set_mpattribute)("Lua:FileIsPackedWithUPX")
end
if peattributes.packersigmatched then
  (mp.set_mpattribute)("Lua:FileIsPackedWithPackerSigMatched")
end
if peattributes.packed then
  return mp.INFECTED
end
return mp.CLEAN

