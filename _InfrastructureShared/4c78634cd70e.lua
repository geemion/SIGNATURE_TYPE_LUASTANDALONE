-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4c78634cd70e 

-- params : ...
-- function num : 0
if epcode[6] == 191 and epcode[11] == 185 and epcode[16] == 73 and epcode[17] == 128 and epcode[21] == 133 and epcode[23] == 117 then
  return mp.INFECTED
end
return mp.CLEAN

