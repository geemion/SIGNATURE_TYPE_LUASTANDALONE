-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/af78ec7dcdf4 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 8 and (pesecs[1]).Name == "CODE" and (pesecs[2]).Name == "DATA" then
  return mp.INFECTED
end
return mp.CLEAN

