-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/277fd337ec88 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).NameDW == 1163217994 and peattributes.epscn_islast == true then
  return mp.INFECTED
end
;
(mp.changedetectionname)(805306404)
return mp.INFECTED

