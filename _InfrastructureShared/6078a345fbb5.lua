-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6078a345fbb5 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 10 and (pesecs[8]).Name == ".crt1" then
  return mp.INFECTED
end
return mp.CLEAN

