-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2d789d3e790b 

-- params : ...
-- function num : 0
if peattributes.no_security == true and ((mp.get_mpattribute)("NID:Win32/RatCat.PA!Pra1") or (mp.get_mpattribute)("NID:Win32/RatCat.PA!Pra2")) then
  return mp.INFECTED
end
return mp.CLEAN

