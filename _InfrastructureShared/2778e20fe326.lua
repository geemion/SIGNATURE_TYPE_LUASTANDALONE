-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2778e20fe326 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.get_mpattribute)("Trojan:MSIL/Injector.B1!ibt") then
  return mp.INFECTED
end
return mp.CLEAN

