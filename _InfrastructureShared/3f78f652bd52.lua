-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3f78f652bd52 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 5 and (pesecs[1]).Name == "AUTO" and (pesecs[2]).Name == "DGROUP" then
  return mp.INFECTED
end
return mp.CLEAN

