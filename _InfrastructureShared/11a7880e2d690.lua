-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/11a7880e2d690 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Worm:MSIL/Cribz!modules") then
  return mp.INFECTED
end
return mp.LOWFI

