-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/abc9da7bc222 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("CURE:Virus:Wi64/Expiro.CB1") then
  return mp.INFECTED
end
return mp.CLEAN

