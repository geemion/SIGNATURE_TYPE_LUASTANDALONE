-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/24c85668f3a8 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 1000000 then
  return mp.CLEAN
end
if (pesecs[1]).Name == "UPX0" then
  return mp.CLEAN
end
;
(mp.set_mpattributeex)("MpRequestEmsScanTrigger", 15000)
return mp.INFECTED

