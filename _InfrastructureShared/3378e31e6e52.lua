-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3378e31e6e52 

-- params : ...
-- function num : 0
if ((pesecs[1]).Name == "CODE" and (pesecs[2]).Name == "DATA" and (pesecs[3]).Name == "BSS") or (pesecs[1]).Name == "UPX0" and (pesecs[2]).Name == "UPX1" then
  return mp.INFECTED
end
return mp.CLEAN

