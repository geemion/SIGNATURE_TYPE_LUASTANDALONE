-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1f781be6938a 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections > 4 and pevars.epsec == pehdr.NumberOfSections and (pesecs[pehdr.NumberOfSections]).Name == "" and (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 3758096384) == 3221225472 then
  return mp.INFECTED
end
return mp.CLEAN

