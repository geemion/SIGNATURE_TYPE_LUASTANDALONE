-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/16478728771a4 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 200000 and pehdr.NumberOfSections >= 7 and (pesecs[5]).Name == ".code" and (pesecs[6]).Name == ".crt" then
  return mp.INFECTED
end
return mp.CLEAN

